from django.shortcuts import render,redirect
from django.contrib.auth.models import User,auth
from django.contrib import messages
from .models import ucontact,Product,Cart,Order,O_item,Wish,Payment
from django.contrib.auth.decorators import login_required
from django.core.paginator import Paginator,EmptyPage,PageNotAnInteger
from django.urls import reverse_lazy
from django.contrib.auth.views import PasswordResetView
from django.contrib.messages.views import SuccessMessageMixin
import random
import string
import stripe
from django.conf import settings
from django.views.generic import View

stripe.api_key = settings.STRIPE_SECRET_KEY


# Create your views here.


def create_ref_code():
	return ''.join(random.choices(string.ascii_lowercase + string.digits, k=20))


class PaymentView(View):
	def get(self, *args, **kwargs,):
		# order
		oid = kwargs.get('oid')
		# print(oid)
		order = Order.objects.get(oid=oid)
		context = {
			'order': order,
		}
		return render(self.request, "payment.html", context)
		
	def post(self, *args, **kwargs):
		oid = kwargs.get('oid')
		# print(oid)
		order = Order.objects.get(u_id=self.request.user,oid=oid)
		token = self.request.POST.get('stripeToken')
		# amount = int(order.get_total() * 100)
		amount = order.amount
		print(amount)

		try:
			charge = stripe.Charge.create(
				amount=amount,  # cents
				currency="usd",
				source=token
			)
			print('1')


			# create the payment
			payment = Payment()
			payment.stripe_charge_id = charge['id']
			payment.user = self.request.user
			payment.amount = order.amount
			payment.save()
			print('2')

			# assign the payment to the order
			order.payment = payment
			order.save()
			print('3')

			messages.success(self.request, "Order was successful")
			return redirect('/confirmorder/' + str(order.oid)  )

		except stripe.error.CardError as e:
			# Since it's a decline, stripe.error.CardError will be caught
			body = e.json_body
			err = body.get('error', {})
			messages.error(self.request, f"{err.get('message')}")
			return redirect("/")

		except stripe.error.RateLimitError as e:
			# Too many requests made to the API too quickly
			messages.error(self.request, "RateLimitError")
			return redirect("/")

		except stripe.error.InvalidRequestError as e:
			# Invalid parameters were supplied to Stripe's API
			messages.error(self.request, "Invalid parameters")
			return redirect("/")

		except stripe.error.AuthenticationError as e:
			# Authentication with Stripe's API failed
			# (maybe you changed API keys recently)
			messages.error(self.request, "Not Authentication")
			return redirect("/")

		except stripe.error.APIConnectionError as e:
			# Network communication with Stripe failed
			messages.error(self.request, "Network Error")
			return redirect("/")

		except stripe.error.StripeError as e:
			# Display a very generic error to the user, and maybe send
			# yourself an email
			messages.error(self.request, "Something went wrong")
			return redirect("/")

		except Exception as e:
			# send an email to ourselves
			messages.error(self.request, "Serious Error occured")
			return redirect("/")

def index(request):
    return render(request,'index.html')

def shop(request):
    data = Paginator(Product.objects.all(),3)
    page = request.GET.get('page')
    try:
        data = data.page(page)
    except PageNotAnInteger:
        data = data.page(1)
    except EmptyPage:
        data = data.page(data.num_pages)
    return render(request,'shop.html',{'data':data})

def cat_prods(request,cid):
    data = Product.objects.filter(c_id=cid)
    return render(request,'cat_prods.html',{'data':data})

def contact(request):
    if request.method == "POST":
        name = request.POST['name']
        email = request.POST['email']
        subject = request.POST['subject']
        message = request.POST['message']

        s = ucontact(uname=name,uemail=email,usubject=subject,umessage=message)
        s.save()
        messages.success(request,'Data added...')
        return redirect('/')

    return render(request,'contact.html')

def checkout(request):
    data = Cart.objects.filter(u_id = request.user)
    g_total = 0
    for d in data:
        g_total += d.sub_total()

    total = g_total + 10
    if request.method == 'POST':
        name = request.POST['name']
        email = request.POST['email']
        phone = request.POST['phone']
        address = request.POST['address']
        city = request.POST['city']
        state = request.POST['state']
        zip = request.POST['zip']
        payment = request.POST['payment']

        if payment == '1':
            o = Order(name=name,email=email,phone=phone,address=address,city=city,state=state,zip=zip,p_type='Cash On Delivery',u_id=request.user,amount=total)
            o.save()

            for d in data:
                    p = Product.objects.get(pid=d.p_id.pid)
                    O_item(o_id=o,p_id=p,quantity=d.quantity,sub_total=d.sub_total()).save()
                    d.delete()
            messages.success(request,'Order is saved...')
            return redirect('/confirmorder/'+ str(o.oid))
        else:
            o = Order(name=name,email=email,phone=phone,address=address,city=city,state=state,zip=zip,p_type='Stripe',u_id=request.user,amount=total)
            o.save()

            for d in data:
                    p = Product.objects.get(pid=d.p_id.pid)
                    O_item(o_id=o,p_id=p,quantity=d.quantity,sub_total=d.sub_total()).save()
                    d.delete()

            return redirect('/payment/stripe/'+ str(o.oid) + '/' )
    return render(request,'checkout.html',{'data':data,'g_total':g_total,'total':total})

def confirmorder(request,oid):
    order_data = Order.objects.get(oid=oid)
    order_item_data = O_item.objects.filter(o_id=oid)
    return render(request,'confirmorder.html',{'order_data':order_data,'order_item_data':order_item_data})

def order_cancel(request,oid):
    order_data = Order.objects.get(oid=oid)
    order_data.status = 'CANCEL'
    order_data.save()
    return redirect('/myorders/')

def myorders(request):
    data = Order.objects.filter(u_id=request.user)
    return render(request,'myorders.html',{'data':data})

def search(request):
    q = request.GET.get('quary')
    data = Product.objects.filter(pname__icontains=q)
    return render(request,'search.html',{'data':data,'quary':q})

@login_required(login_url='/login/')
def cart(request):
    data = Cart.objects.filter(u_id = request.user)
    g_total = 0
    for d in data:
        g_total += d.sub_total()

    return render(request,'cart.html',{'data':data,'g_total':g_total})

@login_required(login_url='/login/')
def wish(request):
    data = Wish.objects.filter(u_id = request.user)
    g_total = 0
    for d in data:
        g_total += d.sub_total()

    return render(request,'wish.html',{'data':data,'g_total':g_total})

@login_required(login_url='/login/')
def add_wish(request,pid):
    p = Product.objects.get(pid=pid)
    if Wish.objects.filter(u_id=request.user,p_id=p).exists():
        messages.warning(request,'Product is already exists...')
        return redirect('/wish/')
    else:
        c = Wish(p_id=p,u_id=request.user,quantity=1)
        c.save()
        messages.success(request,'Product is added to the WishList...')
        return redirect('/wish/')


@login_required(login_url='/login/')
def add_cart(request,pid):
    p = Product.objects.get(pid=pid)
    if Cart.objects.filter(u_id=request.user,p_id=p).exists():
        messages.warning(request,'Product is already exists...')
        return redirect('/cart/')
    else:
        c = Cart(p_id=p,u_id=request.user,quantity=1)
        c.save()
        messages.success(request,'Product is added to the Cart...')
        return redirect('/cart/')

def add_cart_delete(request,pid):
    p = Product.objects.get(pid=pid)
    if Cart.objects.filter(u_id=request.user,p_id=p).exists():
        c = Wish.objects.get(p_id=pid)
        c.delete()
        messages.warning(request,'Product is already exists...')
        return redirect('/cart/')
    else:
        c = Cart(p_id=p,u_id=request.user,quantity=1)
        c.save()
        c = Wish.objects.get(p_id=pid)
        c.delete()
        messages.success(request,'Product is added to the Cart...')
        return redirect('/cart/')

def plus_cart(request,cid):
    c = Cart.objects.get(cid=cid)
    c.quantity += 1
    c.save()
    messages.success(request,'Quantity is Plus by one...')
    return redirect('/cart/')

def minus_cart(request,cid):
    c = Cart.objects.get(cid=cid)
    if c.quantity > 1:
        c.quantity -= 1
        c.save()
        messages.info(request,'Quantity is Minus by one...')
    else:
        c.delete()
        messages.info(request,'Quantity is Minus by one...')

    return redirect('/cart/')

def delete_cart(request,cid):
    c = Cart.objects.get(cid=cid)
    c.delete()
    messages.warning(request,'Product is deleted from cart...')
    return redirect('/cart/')

def delete_wish(request,cid):
    c = Wish.objects.get(cid=cid)
    c.delete()
    messages.error(request,'Product is deleted from wish...')
    return redirect('/wish')

def register(request):
    if request.method == 'POST':
        fname = request.POST['fname']
        lname = request.POST['lname']
        uname = request.POST['uname']
        email = request.POST['email']
        pass1 = request.POST['pass1']
        pass2 = request.POST['pass2']

        if pass1 == pass2 :
            if User.objects.filter(username=uname).exists():
                messages.warning(request,'Username is already exists...')
                return redirect('/register/')
            elif User.objects.filter(email=email).exists():
                messages.warning(request,'Email is already exists...')
                return redirect('/register/')
            else:
                u = User.objects.create_user(first_name=fname,last_name=lname,username=uname,email=email,password=pass1)
                u.save()
                messages.success(request,'Successfully Registered...')
                return redirect('/login/')

        else:
            messages.error(request,'Passwords Does not matched...')
            return redirect('/register/')

    return render(request,'register.html')

def login(request):
    if request.method == 'POST':
        uname = request.POST['uname']
        pass1 = request.POST['pass1']

        user = auth.authenticate(username=uname,password=pass1)
        if user:
            auth.login(request,user)
            messages.success(request,'Successfully Logged In.....')
            return redirect('/')
        else:
            messages.warning(request,'Invalid credentials.....')
            return redirect('/login/')
    return render(request,'login.html')

class ResetPasswordView(SuccessMessageMixin, PasswordResetView):
    template_name = 'password_reset.html'
    email_template_name = 'password_reset_email.html'
    subject_template_name = 'password_reset_subject.txt'
    success_message = "We've emailed you instructions for setting your password, " \
                      "if an account exists with the email you entered. You should receive them shortly." \
                      " If you don't receive an email, " \
                      "please make sure you've entered the address you registered with, and check your spam folder."
    success_url = reverse_lazy('index')

def logout(request):
    auth.logout(request)
    messages.info(request,"Successfully Logged out...")
    return redirect('/')

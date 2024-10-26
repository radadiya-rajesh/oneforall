from django.db import models
from django.contrib.auth.models import User
# Create your models here.

class ucontact(models.Model):
    uindex = models.AutoField(primary_key=True)
    uname = models.CharField(max_length=50)
    uemail = models.EmailField(max_length=50)
    usubject = models.CharField(max_length=50)
    umessage = models.TextField()
    
    def __str__(self) :
        return self.uname
    
class Catagory(models.Model):
    cid = models.AutoField(primary_key=True)
    cname = models.CharField(max_length=30)

    def __str__(self):
        return self.cname

class Product(models.Model):
    pid = models.AutoField(primary_key=True)
    pname = models.CharField(max_length=30)
    pprice = models.IntegerField()
    pdesc = models.TextField()
    pimg = models.ImageField(upload_to='pro_images/')
    c_id = models.ForeignKey(Catagory,on_delete=models.CASCADE)

    def __str__(self):
        return self.pname

class Cart(models.Model):
    cid = models.AutoField(primary_key=True)
    p_id = models.ForeignKey(Product,on_delete=models.CASCADE)
    u_id = models.ForeignKey(User,on_delete=models.CASCADE)
    quantity = models.IntegerField()

    def sub_total(self):
        return self.quantity * self.p_id.pprice 
    
class Wish(models.Model):
    cid = models.AutoField(primary_key=True)
    p_id = models.ForeignKey(Product,on_delete=models.CASCADE)
    u_id = models.ForeignKey(User,on_delete=models.CASCADE)
    quantity = models.IntegerField()
    def sub_total(self):
        return self.quantity * self.p_id.pprice   


class Order(models.Model):
    STATUS_CHOICES =  (
    ("PENDING", "PENDING"),
    ("CONFIRM", "CONFIRM"),
    ("ON SHIPPING", "ON SHIPPING"),
    ("CANCEL", "CANCEL"),
    ("DELIVERED", "DELIVERED"),
    )
    oid = models.AutoField(primary_key=True)
    name = models.CharField(max_length=30)
    email = models.EmailField(max_length=30)
    phone = models.BigIntegerField()
    address = models.TextField(max_length=30)
    city = models.CharField(max_length=30)
    state = models.CharField(max_length=30)
    zip = models.IntegerField()
    amount = models.IntegerField()
    p_type = models.CharField(max_length=30)
    u_id = models.ForeignKey(User,on_delete=models.CASCADE)
    status = models.CharField(max_length=20,choices=STATUS_CHOICES,default="PENDING")
    odate = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return self.name

class O_item(models.Model):
    otid = models.AutoField(primary_key=True)
    o_id = models.ForeignKey(Order,on_delete=models.CASCADE)
    p_id = models.ForeignKey(Product,on_delete=models.CASCADE)
    quantity = models.IntegerField()
    sub_total = models.IntegerField()

class Payment(models.Model):
    stripe_charge_id = models.CharField(max_length=50)
    user = models.ForeignKey(User,
                             on_delete=models.SET_NULL, blank=True, null=True)
    amount = models.FloatField()
    timestamp = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.user.username
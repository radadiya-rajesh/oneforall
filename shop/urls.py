from django.urls import path
from . import views
# from .views import ResetPasswordView
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('',views.index,name='index'),
    path('contact/',views.contact,name='contact'),
    path('cart/',views.cart,name='cart'),
    path('wish/',views.wish,name='wish'),
    path('register/',views.register,name='register'),
    path('login/',views.login,name='login'),
    path('logout/',views.logout,name='logout'),
    path('shop/',views.shop,name='shop'),
    path('cat-prods/<int:cid>/',views.cat_prods,name='cat_prods'),
    path('add-cart/<int:pid>/',views.add_cart,name='add_cart'),
    path('add-cart-delete/<int:pid>/',views.add_cart_delete,name='add_cart_delete'),
    path('add-wish/<int:pid>/',views.add_wish,name='add_wish'),
    path('plus-cart/<int:cid>/',views.plus_cart,name='plus_cart'),
    path('minus-cart/<int:cid>/',views.minus_cart,name='minus_cart'),
    path('delete-cart/<int:cid>/',views.delete_cart,name='delete_cart'),
    path('delete-wish/<int:cid>/',views.delete_wish,name='delete_wish'),
    path('checkout/',views.checkout,name='checkout'),
    path('confirmorder/<int:oid>',views.confirmorder,name='confirmorder'),
    path('order-cancel/<int:oid>',views.order_cancel,name='order_cancel'),
    path('myorders/',views.myorders,name='myorders'),
    path('search/',views.search,name='search'),
    path('password-reset/', views.ResetPasswordView.as_view(), name='password_reset'),
    path('password-reset-confirm/<uidb64>/<token>/',
         auth_views.PasswordResetConfirmView.as_view(template_name='password_reset_confirm.html'),
         name='password_reset_confirm'),
    path('password-reset-complete/',
         auth_views.PasswordResetCompleteView.as_view(template_name='password_reset_complete.html'),
         name='password_reset_complete'),
    path('payment/stripe/<int:oid>/', views.PaymentView.as_view(), name='payment'),
]
from django.contrib import admin
from .models import ucontact,Product,Catagory,Order,O_item,Payment
from import_export.admin import ImportExportModelAdmin
# Register your models here.

class Order_admin(admin.ModelAdmin):
    list_display = ('oid','name','email','amount','p_type','odate','status')
    list_filter = ('odate',)
    search_fields = ('name','status',)
    list_editable = ('status',)

admin.site.register(ucontact)
admin.site.register(Product)
admin.site.register(Catagory)
#admin.site.register(Order,Order_admin)
admin.site.register(O_item)
admin.site.register(Payment)
@admin.register(Order)
class order_data(ImportExportModelAdmin,Order_admin):
    pass
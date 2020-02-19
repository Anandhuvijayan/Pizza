from django.contrib import admin

# Register your models here.
from .models import Productsize, Product, Order

admin.site.register(Productsize)
admin.site.register(Product)
admin.site.register(Order)

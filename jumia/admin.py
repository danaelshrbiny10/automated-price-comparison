from django.contrib import admin
from .models import Customer , Category , MainCategory, Jumia ,PriceHistory , Product 
# Register your models here.



admin.site.register(Customer)
admin.site.register(Category)
admin.site.register(MainCategory)
admin.site.register(Jumia)
admin.site.register(PriceHistory)
admin.site.register(Product)



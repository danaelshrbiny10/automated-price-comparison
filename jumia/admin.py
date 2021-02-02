from django.contrib import admin
from .models import Customer ,Notify, Category , MainCategory, Souq , Jumia , Noon , PriceHistory , Product , Img 
# Register your models here.



admin.site.register(Customer)
admin.site.register(Notify)
admin.site.register(Category)
admin.site.register(MainCategory)
admin.site.register(Souq)
admin.site.register(Jumia)
admin.site.register(Noon)
admin.site.register(PriceHistory)
admin.site.register(Product)
admin.site.register(Img)


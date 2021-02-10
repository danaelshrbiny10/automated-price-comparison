from django.contrib import admin
from .models import Customer , Notify , category , main_category , Souq , Jumia , Noon , Product , PRICE_HISTORY , Img 
# Register your models here.



admin.site.register(Customer)
admin.site.register(Notify)
admin.site.register(category)
admin.site.register(main_category)
admin.site.register(Souq)
admin.site.register(Jumia)
admin.site.register(Noon)
admin.site.register(Product)
admin.site.register(PRICE_HISTORY)
admin.site.register(Img)




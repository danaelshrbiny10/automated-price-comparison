from django.urls import path , include
from jumia.views import all_products ,single_product

urlpatterns = [
    path('' , all_products),
    path ('<int:id>' , single_product)
]
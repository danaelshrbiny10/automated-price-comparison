from django.shortcuts import render
from .models import Jumia
# Create your views here.


def all_products(request):

    all_products = Jumia.objects.all()
    return render (request , 'jumia/all_products.html' , {'jumia':all_products})


def single_product(request , id):

    single_product = Jumia.objects.get(id=id)
    return render (request , 'jumia/single_product.html' ,{'jumia':single_product})
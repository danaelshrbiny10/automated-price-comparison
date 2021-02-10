from django.shortcuts import render
from django.views.generic import ListView , DetailView
from .models import *
# Create your views here.

class BlogList(ListView):
    model = Jumia


class BlogDetail(DetailView):
    model = Jumia






# def all_products(request):

#     all_products = blog.objects.all()
#     return render (request , 'blog/all_products.html' , {'blog':all_products})


# def single_product(request , id):

#     single_product = blog.objects.get(id=id)
#     return render (request , 'blog/single_product.html' ,{'blog':single_product})

from django.shortcuts import render
from django.views.generic import ListView ,DetailView
from django.core.paginator import Paginator 
from .models import Jumia ,Category
# Create your views here.

class BlogList(ListView):
    model = Jumia
    paginate_by = 50

def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context["cat"] =Category.objects.all() 
        return context

def filter_by_category(request,name_category):
    pro = jumia.objects.filter(category__sweetName=name_category)
    return render(request,'product/list.html',{'pro':pro})


class BlogDetail(DetailView):
    model = Jumia



# def dashboard(request):
    
#     return render (request , 'blog/dashboard.html' , {})




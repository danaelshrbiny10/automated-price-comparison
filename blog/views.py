from django.shortcuts import render
from django.views.generic import ListView , DetailView
from .models import *
# Create your views here.

class BlogList(ListView):
    model = Jumia
    paginate_by = 18


class BlogDetail(DetailView):
    model = Jumia


def dashboard(request):
    
    return render (request , 'blog/dashboard.html' , {})



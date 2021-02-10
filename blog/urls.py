from django.urls import path , include
from .import views



app_name = 'blog'

urlpatterns = [
    path('' , views.BlogList.as_view() , name='blog_list'),
    path('<slug:slug>', views.BlogDetail.as_view() , name='blog_detail')
]
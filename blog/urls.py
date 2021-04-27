from django.urls import path , include
from .import views



app_name = 'blog'

urlpatterns = [
    path('' , views.BlogList.as_view() , name='blog_list'),
    path('<int:pk>', views.BlogDetail.as_view() , name='blog_detail'),
    # path('dashboard/' , views.dashboard, name='dashboard'),
    path('<str:name_category>', views.filter_by_category,name='filter_by_category'),
]
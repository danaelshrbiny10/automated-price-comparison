from django.urls import path , include
from . import views



app_name = 'jumia'

urlpatterns = [
    path('' , views.JumiaList.as_view() , name='jumia_list'),
    path('<slug:slug>', views.JumiaDetail.as_view() , name='jumia_detail')
]
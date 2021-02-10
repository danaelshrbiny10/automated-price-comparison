from django import forms
from . models import category ,main_category




class BlogCategoryForm(forms.ModelForm):

    NAME  = forms.CharField(max_length=500)  
    url   = forms.CharField(max_length=500) 

    class Meta:
        model = PropertyBook
        fields = ['NAME' ,'url']

class BlogMainCategoryForm(forms.ModelForm):
    
    categories = forms.IntegerField()
    
    class Meta:
        model = PropertyBook
        fields = ['categories']
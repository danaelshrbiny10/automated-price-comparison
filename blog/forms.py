from django import forms
from . models import category ,main_category




class CategoryForm(ModelForm):
    
        class Meta:
            model = Category
            fields = ['NAME' ,'url']

class MainCategoryForm(ModelForm):
    
        class Meta:
            model = MainCategory
            fields = ['categories']
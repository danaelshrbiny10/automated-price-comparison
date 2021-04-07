from django.db import models

# Create your models here.
class category(models.Model):
    sweetName=models.CharField(max_length=50, null=False,unique=True)
    class Meta:
        db_table = 'category'
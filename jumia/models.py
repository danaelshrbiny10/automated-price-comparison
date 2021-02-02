from django.db import models

# Create your models here.


class Customer(models.Model):
    class Meta:
        managed         = False
        db_table        = 'customer'
        unique_together = (('id', 'firstname', 'lastname','email','password'),)

    id        = models.IntegerField(db_column='id' , primary_key=True)
    firstname = models.CharField(db_column='firstname' ,max_length=50)  
    lastname  = models.CharField(db_column='lastname', max_length=50)  
    email     = models.CharField(db_column='email', max_length=100)  
    password  = models.CharField(db_column='password' , max_length=300)

    class Meta:
        verbose_name_plural = 'Customers'
    
    def __str__ (self):
        return self.id


class Notify(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Notify'
        unique_together = (('id', 'customerID', 'productID','ImPrice','ended'),)

    id          = models.IntegerField(db_column='id' , primary_key=True)
    customerID  = models.IntegerField(db_column='customerID')  
    productID   = models.IntegerField(db_column='productID')  
    ImPrice     = models.CharField(db_column='ImPrice', max_length=100)  
    ended       = models.BooleanField(db_column='ended')  

    class Meta:
        verbose_name_plural = 'Notifies'

    def __str__ (self):
        return self.productID

class Category(models.Model):
    class Meta:
        managed         = False
        db_table        = 'category'
        unique_together = (('categories'),)

    categories  = models.CharField(db_column='categories' ,max_length=500)  

    class Meta:
        verbose_name_plural = 'Categories'

    def __str__ (self):
        return self.categories

class MainCategory(models.Model):
    class Meta:
        managed         = False
        db_table        = 'MainCategory'
        unique_together = (('id', 'name', 'url'),)

    id   = models.IntegerField(db_column='id' , primary_key=True)
    name = models.IntegerField(db_column='name')
    url  = models.CharField(db_column='url' ,max_length=500)  

    class Meta:
        verbose_name_plural = 'MainCategories'

    def __str__ (self):
        return self.name

class Souq(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Souq'
        unique_together = (('id', 'ean', 'title','manufacture','category','active','lastPrice','mainImg','productID','fullDescription','SouqID','rate'),)

    id               = models.IntegerField(db_column='id' , primary_key=True)
    ean              = models.CharField(db_column='ean' ,max_length=50)  
    title            = models.CharField(db_column='title', max_length=50)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    category         = models.IntegerField(db_column='category')
    active           = models.BooleanField(db_column='active')
    lastPrice        = models.CharField(db_column='lastPrice' ,max_length=50)  
    mainImg          = models.TextField(db_column='mainImg')  
    productID        = models.IntegerField(db_column='productID')  
    fullDescription  = models.TextField(db_column='fullDescription')  
    SouqID           = models.IntegerField(db_column='SouqID')
    rate             = models.FloatField(db_column='rate') 

    class Meta:
        verbose_name_plural = 'Souqs'

    def __str__ (self):
        return self.title

class Jumia(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Jumia'
        unique_together = (('id', 'sku', 'title','manufacture','category','active','lastPrice','mainImg','productID','fullDescription','JumiaID','rate'),)

    id               = models.IntegerField(db_column='id' , primary_key=True)
    sku              = models.CharField(db_column='sku' ,max_length=50)  
    title            = models.CharField(db_column='title', max_length=50)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    category         = models.IntegerField(db_column='category')
    active           = models.BooleanField(db_column='active')
    lastPrice        = models.CharField(db_column='lastPrice' ,max_length=50)  
    mainImg          = models.TextField(db_column='mainImg')  
    productID        = models.IntegerField(db_column='productID')  
    fullDescription  = models.TextField(db_column='fullDescription')  
    JumiaID          = models.IntegerField(db_column='JumiaID')
    rate             = models.FloatField(db_column='rate') 

    class Meta:
        verbose_name_plural = 'Jumias'

    def __str__ (self):
        return self.title

class Noon(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Noon'
        unique_together = (('id', 'sku', 'title','manufacture','category','active','lastPrice','mainImg','productID','fullDescription','NoonID','rate'),)

    id               = models.IntegerField(db_column='id' , primary_key=True)
    sku              = models.CharField(db_column='sku' ,max_length=50)  
    title            = models.CharField(db_column='title', max_length=50)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    category         = models.IntegerField(db_column='category')
    active           = models.BooleanField(db_column='active')
    lastPrice        = models.CharField(db_column='lastPrice' ,max_length=50)  
    mainImg          = models.TextField(db_column='mainImg')  
    productID        = models.IntegerField(db_column='productID')  
    fullDescription  = models.TextField(db_column='fullDescription')  
    NoonID           = models.IntegerField(db_column='NoonID')
    rate             = models.FloatField(db_column='rate') 

    class Meta:
        verbose_name_plural = 'Noons'

    def __str__ (self):
        return self.title
class Product(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Product'
        unique_together = (('id', 'ean', 'title','manufacture','category','active','lastPrice','mainImg','fullDescription','SouqID','avgRating','img'),)

    id               = models.IntegerField(db_column='id' , primary_key=True)
    ean              = models.CharField(db_column='ean' ,max_length=50)  
    title            = models.CharField(db_column='title', max_length=50)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    category         = models.IntegerField(db_column='category')
    active           = models.BooleanField(db_column='active')
    lastPrice        = models.CharField(db_column='lastPrice' ,max_length=50)  
    mainImg          = models.TextField(db_column='mainImg')   
    fullDescription  = models.TextField(db_column='fullDescription')  
    SouqID           = models.IntegerField(db_column='SouqID')
    avgRating        = models.FloatField(db_column='avgRating') 
    img              = models.IntegerField(db_column='img')

    class Meta:
        verbose_name_plural = 'Products'

    def __str__ (self):
        return self.title
class PriceHistory(models.Model):
    class Meta:
        managed         = False
        db_table        = 'PriceHistory'
        unique_together = (('productID', 'dateOFchange', 'price'),)

    productID        = models.IntegerField(db_column='productID')
    dateOFchange     = models.DateField(db_column='dateOFchange')  
    price            = models.CharField(db_column='price', max_length=50)  
    
    class Meta:
        verbose_name_plural = 'PriceHistories'

    def __str__ (self):
        return self.productID

class Img(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Img'
        unique_together = (('id', 'productID', 'imgPath'),)

    id               = models.IntegerField(db_column='id' , primary_key=True)
    productID        = models.IntegerField(db_column='productID')
    imgPath          = models.CharField(db_column='imgPath', max_length=300)  
    
    class Meta:
        verbose_name_plural = 'Imgs'

    def __str__ (self):
        return self.productID
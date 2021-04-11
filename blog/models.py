from django.db import models

class Category(models.Model):
    name = models.CharField(max_length=300, blank=True, null=True)
    url  = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed             = False
        db_table            = 'category'
        verbose_name_plural = 'Categories'
    
    def __str__ (self):
        return self.name


class Customer(models.Model):
    firstname = models.CharField(max_length=50, blank=True, null=True)
    lastname  = models.CharField(max_length=50, blank=True, null=True)
    email     = models.CharField(max_length=100, blank=True, null=True)
    password  = models.CharField(max_length=300, blank=True, null=True)

    class Meta:
        managed             = False
        db_table            = 'customer'
        verbose_name_plural = 'Customers'

    def __str__ (self):
        return self.firstname

class Img(models.Model):
    product_id = models.IntegerField()
    img_path   = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed             = True
        db_table            = 'img'
        verbose_name_plural = 'Imgs'

    def __str__ (self):
        return self.product_id

class Jumia(models.Model):
    sku        = models.CharField(max_length=520, blank=True, null=True)
    name       = models.CharField(max_length=300, blank=True, null=True)
    categories = models.CharField(max_length=500, blank=True, null=True)
    prices     = models.CharField(max_length=500, blank=True, null=True)
    rating     = models.FloatField()

    class Meta:
        managed             = False
        db_table            = 'jumia'
        verbose_name_plural = 'Jumias'
    
    def __str__ (self):
        return str(self.name)

    def get_absolute_url(self):
        return reverse("blog:blog_detail", kwargs={'slug': self.slug})
    

class MainCategory(models.Model):
    categories = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed             = False
        db_table            = 'main_category'
        verbose_name_plural = 'MainCategories'

    def __str__ (self):
        return self.categories

class Noon(models.Model):
    sku         = models.CharField(max_length=50, blank=True, null=True)
    title       = models.CharField(max_length=300, blank=True, null=True)
    manufacture = models.CharField(max_length=50, blank=True, null=True)
    category    = models.IntegerField()
    keywords    = models.TextField()
    ean         = models.CharField(max_length=50, blank=True, null=True)
    active      = models.BooleanField(blank=True, null=True)
    lastprice   = models.CharField(max_length=50, blank=True, null=True)
    product_id  = models.IntegerField()
    noon_id     = models.AutoField( primary_key=True)
    rate        = models.IntegerField()

    class Meta:
        managed             = True
        db_table            = 'noon'
        verbose_name_plural = 'Noons'
    
    def __str__ (self):
        return self.title

class Notify(models.Model):
    customer_id = models.IntegerField()
    prodect_id  = models.IntegerField()
    im_price    = models.CharField(max_length=100, blank=True, null=True)
    ended       = models.BooleanField(blank=True, null=True)

    class Meta:
        managed             = True
        db_table            = 'notify'
        verbose_name_plural = 'Notifies'
    
    def __str__ (self):
        return self.prodect_id

class PriceHistory(models.Model):
    prices = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed             = False
        db_table            = 'price_history'
        verbose_name_plural = 'PRICE_HISTORIES'
    
    def __str__ (self):
        return self.prices

class Product(models.Model):
    sku         = models.CharField(max_length=50, blank=True, null=True)
    title       = models.CharField(max_length=300, blank=True, null=True)
    manufacture = models.CharField(max_length=50, blank=True, null=True)
    description = models.TextField()
    category    = models.IntegerField()
    keywords    = models.TextField()
    ean         = models.CharField(max_length=50, blank=True, null=True)
    lowprice    = models.CharField(max_length=50, blank=True, null=True)
    avg_rate    = models.IntegerField()

    class Meta:
        managed             = False
        db_table            = 'product'
        verbose_name_plural = 'Products'

    def __str__ (self):
        return self.title
class Souq(models.Model):
    sku         = models.CharField(max_length=50, blank=True, null=True)
    title       = models.CharField(max_length=300, blank=True, null=True)
    manufacture = models.CharField(max_length=50, blank=True, null=True)
    description = models.TextField()
    img         = models.TextField()
    category    = models.IntegerField()
    keywords    = models.TextField()
    ean         = models.CharField(max_length=50, blank=True, null=True)
    active      = models.BooleanField(blank=True, null=True)
    lastprice   = models.CharField(max_length=50, blank=True, null=True)
    product_id  = models.IntegerField()
    souq_id     = models.AutoField( primary_key=True)
    rate        = models.IntegerField()

    class Meta:
        managed             = False
        db_table            = 'souq'
        verbose_name_plural = 'Souqs'
    
    def __str__ (self):
        return self.title

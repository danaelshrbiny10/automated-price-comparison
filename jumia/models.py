from django.db import models
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator, MinValueValidator
from django.utils.text import slugify
from django.urls import reverse
from django.utils import timezone
# Create your models here.

class Jumia(models.Model):
    # owner            = models.ForeignKey(User, related_name='Jumia_Customer', on_delete=models.CASCADE)
    # id               = models.IntegerField()
    sku              = models.CharField(max_length=50)  
    title            = models.CharField(max_length=50)  
    manufacture      = models.CharField( max_length=50)  
    category         = models.IntegerField()
    active           = models.BooleanField(default=False)
    lastPrice        = models.CharField(max_length=50)  
    mainImg          = models.TextField(max_length=1200)  
    productID        = models.IntegerField()  
    fullDescription  = models.TextField(max_length=1200)  
    JumiaID          = models.IntegerField()
    rate             = models.PositiveIntegerField(default=0 ,  validators=[MaxValueValidator(5)])
    slug             = models.SlugField(blank=True, null=True)
    created_at       = models.DateTimeField(auto_now=True)
    updated_at       = models.DateTimeField(auto_now_add=True)

    
    class Meta:
        verbose_name_plural = 'Jumias'

    def save(self, *args, **kwargs):
        if self.title:
            self.slug = slugify(self.title)
        super(Jumia, self).save(*args, **kwargs)

    def __str__ (self):
        return self.title

    def get_absolute_url(self):
        return reverse("jumia:jumia_detail", kwargs={"slug": self.slug})

    # def check_avablity(self):
    #     all_reservations = self.property_book.all()
    #     now = timezone.now().date()
    #     for reservation in all_reservations:
    #         if now > reservation.date_to : 
    #             return 'Avialable'

    #         elif now > reservation.date_from and now < reservation.date_to:
    #             reserved_to = reservation.date_to
    #             return f'In Progress to {reserved_to}'
    #     else:
    #         return 'Avialable'

    # def get_avg_rating(self):
    #     all_reviews = self.property_review.all()
    #     all_ratings = 0
    
    #     if len(all_reviews) > 0 : 
    #         for review in all_reviews:
    #             all_ratings += review.rating
            
    #         return round(all_ratings / len(all_reviews) , 2)
    #     else:
    #         return '-'


    

class PriceHistory(models.Model):
    productID        = models.IntegerField()
    dateOFchange     = models.DateField(auto_now=True)  
    price            = models.CharField(max_length=50)
    
    class Meta:
        verbose_name_plural = 'PriceHistories'

    def __str__ (self):
        return self.productID



class Category(models.Model):
    categories  = models.CharField(max_length=500)  
    icon        = models.CharField(max_length=25 , blank=True, null=True)

    class Meta:
        verbose_name_plural = 'Categories'

    def __str__ (self):
        return self.categories

class MainCategory(models.Model):
    # id   = models.IntegerField()
    name = models.IntegerField()
    url  = models.CharField(max_length=500)  
    class Meta:
        verbose_name_plural = 'MainCategories'

    def __str__ (self):
        return self.name


class Product(models.Model):
    # id               = models.IntegerField()
    ean              = models.CharField(max_length=50)  
    title            = models.CharField(max_length=50)  
    manufacture      = models.CharField(max_length=50)  
    category         = models.IntegerField()
    active           = models.BooleanField(default=False)
    lastPrice        = models.CharField(max_length=50)  
    mainImg          = models.TextField(max_length=1200)   
    fullDescription  = models.TextField(max_length=1200)  
    SouqID           = models.IntegerField()
    avgRating        = models.PositiveIntegerField(default=0 ,  validators=[MaxValueValidator(5)])
    img              = models.ImageField( upload_to='Jumia/')
    class Meta:
        verbose_name_plural = 'Products'

    def __str__ (self):
        return self.title

class JumiaReview(models.Model):
    Jumia = models.ForeignKey(Jumia, related_name='Jumia_review', on_delete=models.CASCADE)
    author = models.ForeignKey(User, related_name='review_owner', on_delete=models.CASCADE)
    rating = models.PositiveIntegerField(default=0 ,  validators=[MaxValueValidator(5)])
    feedback = models.TextField(default='' , max_length=200)


    def __str__(self):
        return self.property.title

class Customer(models.Model):
    # id        = models.IntegerField()
    firstname = models.CharField(max_length=50)  
    lastname  = models.CharField(max_length=50)  
    email     = models.EmailField( max_length=254)  
    password  = models.CharField(max_length=300)

    class Meta:
        verbose_name_plural = 'Customers'
    
    def __str__ (self):
        return self.id
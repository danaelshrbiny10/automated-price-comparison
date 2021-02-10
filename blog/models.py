from django.db import models
from django.contrib.auth.models import User
from django.core.validators import MaxValueValidator, MinValueValidator
from django.utils.text import slugify
from django.urls import reverse
from django.utils import timezone
from django.contrib.contenttypes.fields import GenericRelation
from star_ratings.models import Rating



class Customer(models.Model):
    class Meta:
        managed         = False
        db_table        = 'customer'
        unique_together = (('id', 'firstname', 'lastname','email','password'),)

    id        = models.IntegerField(db_column='id' , primary_key=True, default='', blank=True, null=False)
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

    id          = models.IntegerField(db_column='id' ,default='', primary_key=True , blank=True, null=False)
    customerID  = models.IntegerField(db_column='customerID',blank=True, null=True)  
    productID   = models.IntegerField(db_column='productID',blank=True, null=True)  
    ImPrice     = models.CharField(db_column='ImPrice', max_length=100)  
    ended       = models.BooleanField(db_column='ended')  

    class Meta:
        verbose_name_plural = 'Notifies'

    def __str__ (self):
        return self.productID

class category(models.Model):
    class Meta:
        managed         = False
        db_table        = 'category'
        unique_together = (('NAME' ,'url'),)

    NAME  = models.CharField(db_column='NAME' ,max_length=500)  
    url   = models.CharField(db_column='url' ,max_length=500) 
    class Meta:
        verbose_name_plural = 'Categories'

    def __str__ (self):
        return self.NAME


categories_choises = (
    ('laptops','laptops'),
    ('mobile-phones','mobile-phones'),
    ('electronic-television-video','electronic-television-video'),
    ('cameras','cameras'),
    ('home-audio-electronics','home-audio-electronics'),
    ('electronics-headphone','electronics-headphone'),
    ('computer-data-storage','computer-data-storage'),
    ('computing-accessories','computing-accessories'),
    ('computer-components','computer-components'),
    ('networking','networking'),
    ('pc-gaming','pc-gaming'),
    ('laystation-games','laystation-games'),
    ('digital-games','digital-games'),
    ('xbox-games','xbox-games')
)


class main_category(models.Model):
    class Meta:
        managed         = False
        db_table        = 'main_category'
        unique_together = (('categories'),)

    categories   = models.IntegerField(db_column='categories' ,default='' , choices=categories_choises)

    class Meta:
        verbose_name_plural = 'MainCategories'

    def __str__ (self):
        return self.categories

class Souq(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Souq'
        unique_together = (('id', 'ean', 'title','manufacture','category','active','lastPrice','mainImg','productID','fullDescription','SouqID','rate','feedback'),)

    id               = models.IntegerField(db_column='id' , primary_key=True, default='',blank=True, null=False)
    ean              = models.CharField(db_column='ean' ,max_length=50)  
    title            = models.CharField(db_column='title', max_length=50)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    category         = models.IntegerField(db_column='category',default='' , choices=categories_choises)
    active           = models.BooleanField(db_column='active')
    lastPrice        = models.IntegerField(db_column='lastPrice')  
    mainImg          = models.ImageField(db_column='mainImg' , upload_to='mainImg/')  
    productID        = models.IntegerField(db_column='productID',blank=True, null=True)  
    fullDescription  = models.TextField(db_column='fullDescription')  
    SouqID           = models.IntegerField(db_column='SouqID',blank=True, null=True)
    rate             = models.PositiveIntegerField(db_column='rate',default=0 ,  validators=[MaxValueValidator(5)]) 
    feedback         = models.TextField(db_column='feedback',default='' , max_length=200)

    class Meta:
        verbose_name_plural = 'Souqs'

    def __str__ (self):
        return self.title

class Jumia(models.Model):
    def increment_id():
        CheckRow = Jumia.objects.all().count()

        if not CheckRow:
            return 1

        else:
            CheckRow = Jumia.objects.all().order_by('id').last().id
            return CheckRow + 1

    class Meta:
        managed         = False
        db_table        = 'Jumia'
        unique_together = (('id','SKU', 'NAME','manufacture','CATEGORIES','active','PRICES','mainImg','productID','fullDescription','JumiaID','RATING','slug','status','feedback'),)

    id               = models.IntegerField(db_column='id' , primary_key=True , default=increment_id, unique=True, blank=False, null=False, verbose_name='id')
    SKU              = models.CharField(db_column='SKU' ,max_length=50)  
    NAME             = models.CharField(db_column='NAME', max_length=50,null=False)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    CATEGORIES       = models.IntegerField(db_column='CATEGORIES',default='' , choices=categories_choises)
    active           = models.BooleanField(db_column='active')
    PRICES           = models.IntegerField(db_column='PRICES' )  
    mainImg          = models.ImageField(db_column='mainImg', upload_to='mainImg/')  
    productID        = models.IntegerField(db_column='productID',blank=True, null=True)  
    fullDescription  = models.TextField(db_column='fullDescription')  
    JumiaID          = models.IntegerField(db_column='JumiaID',blank=True, null=True)
    RATING           = models.PositiveIntegerField(db_column='RATING' , default=0 ,  validators=[MaxValueValidator(5)])
    status           = models.BooleanField(db_column='status',default=True)
    slug             = models.SlugField(db_column='slug',null=True ,editable=False)
    feedback         = models.TextField(db_column='feedback',default='' , max_length=200)


    class Meta:
        unique_together = ['NAME', 'slug']
        verbose_name_plural = 'Jumias'

    def save(self, *args, **kwargs):
        if self.id:
            self.slug = slugify(self.id)
        super(Jumia, self).save(*args, **kwargs)

    def __str__ (self):
        return str(self.NAME)
    
    def clean(self):
        self.slug = slugify(self.NAME, allow_unicode=True)

    def get_absolute_url(self):
        return reverse("blog:blog_detail", kwargs={"slug": self.slug})

    def check_avablity(self):
        all_reservations = self.property_book.all()
        now = timezone.now().date()
        for reservation in all_reservations:
            if now > reservation.date_to : 
                return 'Avialable'

            elif now > reservation.date_from and now < reservation.date_to:
                reserved_to = reservation.date_to
                return f'In Progress to {reserved_to}'
        else:
            return 'Avialable'

    def get_avg_rating(self):
        all_reviews = self.property_review.all()
        all_ratings = 0
    
        if len(all_reviews) > 0 : 
            for review in all_reviews:
                all_ratings += review.rating
            
            return round(all_ratings / len(all_reviews) , 2)
        else:
            return '-'

class Noon(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Noon'
        unique_together = (('id', 'sku', 'title','manufacture','category','active','lastPrice','mainImg','productID','fullDescription','NoonID','rate',' feedback '),)

    id               = models.IntegerField(db_column='id' , primary_key=True,blank=True, null=False)
    sku              = models.CharField(db_column='sku' ,max_length=50)  
    title            = models.CharField(db_column='title', max_length=50)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    category         = models.IntegerField(db_column='category',default='' , choices=categories_choises)
    active           = models.BooleanField(db_column='active')
    lastPrice        = models.IntegerField(db_column='lastPrice')  
    mainImg          = models.ImageField(db_column='mainImg', upload_to='mainImg/')  
    productID        = models.IntegerField(db_column='productID',blank=True, null=True)  
    fullDescription  = models.TextField(db_column='fullDescription')  
    NoonID           = models.IntegerField(db_column='NoonID',blank=True, null=True)
    rate             = models.PositiveIntegerField(db_column='rate',default=0 ,  validators=[MaxValueValidator(5)]) 
    feedback         = models.TextField(db_column='feedback',default='' , max_length=200)

    class Meta:
        verbose_name_plural = 'Noons'

    def __str__ (self):
        return self.title
class Product(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Product'
        unique_together = (('id', 'ean', 'title','manufacture','category','active','lastPrice','mainImg','fullDescription','SouqID','avgRating','img','feedback'),)

    id               = models.IntegerField(db_column='id' , primary_key=True, default='',blank=True, null=False)
    ean              = models.CharField(db_column='ean' ,max_length=50)  
    title            = models.CharField(db_column='title', max_length=50)  
    manufacture      = models.CharField(db_column='manufacture', max_length=50)  
    category         = models.IntegerField(db_column='category',default='' , choices=categories_choises)
    active           = models.BooleanField(db_column='active')
    lastPrice        = models.IntegerField(db_column='lastPrice')  
    mainImg          = models.ImageField(db_column='mainImg',upload_to='mainImg/')   
    fullDescription  = models.TextField(db_column='fullDescription')  
    SouqID           = models.IntegerField(db_column='SouqID',blank=True, null=True)
    avgRating        = models.FloatField(db_column='avgRating',default=0 ,  validators=[MaxValueValidator(5)]) 
    img              = models.IntegerField(db_column='img')
    feedback         = models.TextField(db_column='feedback',default='' , max_length=200)

    class Meta:
        verbose_name_plural = 'Products'

    def __str__ (self):
        return self.title
class PRICE_HISTORY(models.Model):
    class Meta:
        managed         = False
        db_table        = 'PRICE_HISTORY'
        unique_together = (('productID','dateOFchange','PRICES'),)

    productID        = models.IntegerField(db_column='productID', default='',blank=True, null=True)
    dateOFchange     = models.DateField(db_column='dateOFchange')  
    PRICES           = models.IntegerField(db_column='PRICES')  
    
    class Meta:
        verbose_name_plural = 'PRICE_HISTORIES'

    def __str__ (self):
        return self.productID

class Img(models.Model):
    class Meta:
        managed         = False
        db_table        = 'Img'
        unique_together = (('id', 'productID', 'imgPath'),)

    id               = models.IntegerField(db_column='id' , primary_key=True, default='',blank=True, null=False)
    productID        = models.IntegerField(db_column='productID',blank=True, null=True)
    imgPath          = models.CharField(db_column='imgPath', max_length=300)  
    
    class Meta:
        verbose_name_plural = 'Imgs'

    def __str__ (self):
        return self.productID

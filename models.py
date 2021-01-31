# This is an auto-generated Django model module.
# You'll have to do the following manually to clean this up:
#   * Rearrange models' order
#   * Make sure each model has one field with primary_key=True
#   * Make sure each ForeignKey and OneToOneField has `on_delete` set to the desired behavior
#   * Remove `managed = False` lines if you wish to allow Django to create, modify, and delete the table
# Feel free to rename the models, but don't rename db_table values or field names.
from django.db import models


class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'


class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)


class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)


class Category(models.Model):
    name = models.CharField(max_length=300, blank=True, null=True)
    url = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'category'


class Customer(models.Model):
    id = models.IntegerField(primary_key=True)
    firstname = models.CharField(max_length=50, blank=True, null=True)
    lastname = models.CharField(max_length=50, blank=True, null=True)
    email = models.CharField(max_length=100, blank=True, null=True)
    password = models.CharField(max_length=300, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'customer'


class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Img(models.Model):
    id = models.IntegerField(primary_key=True)
    product_id = models.IntegerField()
    img_path = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'img'


class Jumia(models.Model):
    sku = models.CharField(max_length=520, blank=True, null=True)
    name = models.CharField(max_length=300, blank=True, null=True)
    categories = models.CharField(max_length=500, blank=True, null=True)
    prices = models.CharField(max_length=500, blank=True, null=True)
    rating = models.FloatField()

    class Meta:
        managed = False
        db_table = 'jumia'


class MainCategory(models.Model):
    categories = models.CharField(max_length=500, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'main_category'


class Noon(models.Model):
    id = models.IntegerField(primary_key=True)
    sku = models.CharField(max_length=50, blank=True, null=True)
    title = models.CharField(max_length=300, blank=True, null=True)
    manufacture = models.CharField(max_length=50, blank=True, null=True)
    category = models.IntegerField()
    keywords = models.TextField()
    ean = models.CharField(max_length=50, blank=True, null=True)
    active = models.BooleanField(blank=True, null=True)
    lastprice = models.CharField(max_length=50, blank=True, null=True)
    product_id = models.IntegerField()
    noon_id = models.IntegerField()
    rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'noon'


class Notify(models.Model):
    id = models.IntegerField(primary_key=True)
    customer_id = models.IntegerField()
    prodect_id = models.IntegerField()
    im_price = models.CharField(max_length=100, blank=True, null=True)
    ended = models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'notify'


class PriceHistory(models.Model):
    prices = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'price_history'


class Product(models.Model):
    id = models.IntegerField(primary_key=True)
    sku = models.CharField(max_length=50, blank=True, null=True)
    title = models.CharField(max_length=300, blank=True, null=True)
    manufacture = models.CharField(max_length=50, blank=True, null=True)
    description = models.TextField()
    category = models.IntegerField()
    keywords = models.TextField()
    ean = models.CharField(max_length=50, blank=True, null=True)
    lowprice = models.CharField(max_length=50, blank=True, null=True)
    avg_rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'product'


class Souq(models.Model):
    id = models.IntegerField(primary_key=True)
    sku = models.CharField(max_length=50, blank=True, null=True)
    title = models.CharField(max_length=300, blank=True, null=True)
    manufacture = models.CharField(max_length=50, blank=True, null=True)
    description = models.TextField()
    img = models.TextField()
    category = models.IntegerField()
    keywords = models.TextField()
    ean = models.CharField(max_length=50, blank=True, null=True)
    active = models.BooleanField(blank=True, null=True)
    lastprice = models.CharField(max_length=50, blank=True, null=True)
    product_id = models.IntegerField()
    souq_id = models.IntegerField()
    rate = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'souq'

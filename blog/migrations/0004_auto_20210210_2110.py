# Generated by Django 3.1.5 on 2021-02-10 19:10

import django.core.validators
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0003_auto_20210210_2041'),
    ]

    operations = [
        migrations.AddField(
            model_name='jumia',
            name='feedback',
            field=models.TextField(db_column='feedback', default='', max_length=200),
        ),
        migrations.AddField(
            model_name='noon',
            name='feedback',
            field=models.TextField(db_column='feedback', default='', max_length=200),
        ),
        migrations.AddField(
            model_name='product',
            name='feedback',
            field=models.TextField(db_column='feedback', default='', max_length=200),
        ),
        migrations.AddField(
            model_name='souq',
            name='feedback',
            field=models.TextField(db_column='feedback', default='', max_length=200),
        ),
        migrations.AlterField(
            model_name='jumia',
            name='PRICES',
            field=models.IntegerField(db_column='PRICES'),
        ),
        migrations.AlterField(
            model_name='jumia',
            name='RATING',
            field=models.PositiveIntegerField(db_column='RATING', default=0, validators=[django.core.validators.MaxValueValidator(5)]),
        ),
        migrations.AlterField(
            model_name='jumia',
            name='mainImg',
            field=models.ImageField(db_column='mainImg', upload_to='mainImg/'),
        ),
        migrations.AlterField(
            model_name='noon',
            name='lastPrice',
            field=models.IntegerField(db_column='lastPrice'),
        ),
        migrations.AlterField(
            model_name='noon',
            name='mainImg',
            field=models.ImageField(db_column='mainImg', upload_to='mainImg/'),
        ),
        migrations.AlterField(
            model_name='noon',
            name='rate',
            field=models.PositiveIntegerField(db_column='rate', default=0, validators=[django.core.validators.MaxValueValidator(5)]),
        ),
        migrations.AlterField(
            model_name='price_history',
            name='PRICES',
            field=models.IntegerField(db_column='PRICES'),
        ),
        migrations.AlterField(
            model_name='product',
            name='avgRating',
            field=models.FloatField(db_column='avgRating', default=0, validators=[django.core.validators.MaxValueValidator(5)]),
        ),
        migrations.AlterField(
            model_name='product',
            name='lastPrice',
            field=models.IntegerField(db_column='lastPrice'),
        ),
        migrations.AlterField(
            model_name='product',
            name='mainImg',
            field=models.ImageField(db_column='mainImg', upload_to='mainImg/'),
        ),
        migrations.AlterField(
            model_name='souq',
            name='lastPrice',
            field=models.IntegerField(db_column='lastPrice'),
        ),
        migrations.AlterField(
            model_name='souq',
            name='mainImg',
            field=models.ImageField(db_column='mainImg', upload_to='mainImg/'),
        ),
        migrations.AlterField(
            model_name='souq',
            name='rate',
            field=models.PositiveIntegerField(db_column='rate', default=0, validators=[django.core.validators.MaxValueValidator(5)]),
        ),
    ]
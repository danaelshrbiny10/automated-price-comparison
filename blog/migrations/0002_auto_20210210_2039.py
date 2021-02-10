# Generated by Django 3.1.5 on 2021-02-10 18:39

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='main_category',
            name='categories',
            field=models.IntegerField(choices=[('laptops', 'laptops'), ('mobile-phones', 'mobile-phones'), ('electronic-television-video', 'electronic-television-video'), ('cameras', 'cameras'), ('home-audio-electronics', 'home-audio-electronics'), ('electronics-headphone', 'electronics-headphone'), ('computer-data-storage', 'computer-data-storage'), ('computing-accessories', 'computing-accessories'), ('computer-components', 'computer-components'), ('networking', 'networking'), ('pc-gaming', 'pc-gaming'), ('laystation-games', 'laystation-games'), ('digital-games', 'digital-games'), ('xbox-games', 'xbox-games')], db_column='categories', default=''),
        ),
    ]
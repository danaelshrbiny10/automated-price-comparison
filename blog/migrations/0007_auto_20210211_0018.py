# Generated by Django 3.1.5 on 2021-02-10 22:18

import blog.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0006_auto_20210210_2151'),
    ]

    operations = [
        migrations.AddField(
            model_name='jumia',
            name='slug',
            field=models.SlugField(db_column='slug', editable=False, null=True),
        ),
        migrations.AddField(
            model_name='jumia',
            name='status',
            field=models.BooleanField(db_column='status', default=True),
        ),
        migrations.AlterField(
            model_name='jumia',
            name='id',
            field=models.IntegerField(db_column='id', default=blog.models.Jumia.increment_id, primary_key=True, serialize=False, unique=True, verbose_name='id'),
        ),
        migrations.AlterUniqueTogether(
            name='jumia',
            unique_together={('NAME', 'slug')},
        ),
    ]

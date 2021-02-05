# Generated by Django 3.1.5 on 2021-01-31 03:12

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Category',
            fields=[
                ('id', models.IntegerField(db_column='id', primary_key=True, serialize=False)),
                ('name', models.IntegerField(db_column='name')),
                ('url', models.CharField(db_column='url', max_length=500)),
            ],
            options={
                'db_table': 'category',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Customer',
            fields=[
                ('id', models.IntegerField(db_column='id', primary_key=True, serialize=False)),
                ('firstname', models.CharField(db_column='firstname', max_length=50)),
                ('lastname', models.CharField(db_column='lastname', max_length=50)),
                ('email', models.CharField(db_column='email', max_length=100)),
                ('password', models.CharField(db_column='password', max_length=300)),
            ],
            options={
                'db_table': 'customer',
                'managed': False,
            },
        ),
    ]
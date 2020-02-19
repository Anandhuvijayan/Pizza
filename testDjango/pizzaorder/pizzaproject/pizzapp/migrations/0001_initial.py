# Generated by Django 3.0.2 on 2020-01-10 05:12

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('product_name', models.CharField(max_length=200)),
                ('product_desc', models.TextField(blank=True)),
                ('product_image', models.ImageField(upload_to='')),
                ('product_qty', models.IntegerField(default=0)),
                ('product_price', models.IntegerField(default=0)),
                ('product_date', models.DateTimeField(verbose_name='Date added')),
                ('product_status', models.IntegerField(default=1)),
            ],
        ),
        migrations.CreateModel(
            name='Productsize',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('psize_size', models.IntegerField(default=0)),
                ('psize_date', models.DateTimeField(verbose_name='Date added')),
                ('psize_status', models.IntegerField(default=1)),
            ],
        ),
    ]

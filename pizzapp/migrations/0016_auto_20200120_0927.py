# Generated by Django 3.0.2 on 2020-01-20 09:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pizzapp', '0015_auto_20200120_0925'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productsize',
            name='product_size',
            field=models.CharField(max_length=30),
        ),
    ]

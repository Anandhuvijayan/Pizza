# Generated by Django 3.0.2 on 2020-01-20 09:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('pizzapp', '0012_auto_20200120_0903'),
    ]

    operations = [
        migrations.AlterField(
            model_name='productsize',
            name='p_name',
            field=models.CharField(default='', max_length=30),
        ),
    ]
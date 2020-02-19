from django.db import models

from django.urls import reverse  # To generate URLS by reversing URL patterns

# Create your models here.

# Create model Productsize
class Productsize(models.Model):
    p_size = models.CharField(max_length=30)
    p_desc = models.TextField(blank = True)
    p_qty = models.IntegerField(default=0)
    p_status = models.IntegerField(default=1)

    def __str__(self):
        return self.p_size 
    

# Create model Product
class Product(models.Model):
    product_sizeid = models.ForeignKey(Productsize, on_delete=models.CASCADE)
    product_name = models.CharField(max_length=200)
    product_desc = models.TextField(blank = True)
    product_image = models.ImageField(upload_to='productimages/')
    product_qty = models.IntegerField(default=0)
    product_price = models.IntegerField(default=0)
    product_date = models.DateTimeField('Date added')
    product_status = models.IntegerField(default=1)
    

    def __str__(self):
        return self.product_name

    def get_absolute_url(self):
        """Returns the url to access a particular book instance."""
        return reverse('product-detail', args=[str(self.id)])    

# Create model Order
class Order(models.Model): 
    product_name = models.CharField(max_length=200,default='11')
    product_size = models.CharField(max_length=200,default='1')
    customer_name = models.CharField(max_length=200,default='example')
    customer_email = models.EmailField(max_length=255,default='example@email.com') 
    customer_phone = models.BigIntegerField(default=0,verbose_name="Phone number")
    
    def __str__(self):
        return self.customer_name   


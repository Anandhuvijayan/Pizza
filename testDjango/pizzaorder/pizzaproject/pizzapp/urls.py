from django.urls import path

from . import views
urlpatterns = [
    # ex: /pizzapp/
    path('', views.ProductView.as_view(), name='product'),
    # ex: /pizzapp/product/pk/
    path('product/<int:pk>', views.ProductDetailView.as_view(), name='product-detail'),  
    # ex: /pizzapp/order/ordersubmit/
    path('ordersubmit/', views.orderinfo, name='orderinfo'), 
]
   

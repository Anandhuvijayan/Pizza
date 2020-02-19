from django.urls import path
from . import views
from .views import SearchResultsView
urlpatterns = [
    # ex: /pizzapp/
    path('', views.SearchResultsView.as_view(), name='product'),
    # ex: /pizzapp/product/pk/
    path('product/<int:pk>', views.ProductDetailView.as_view(), name='product-detail'),  
    # ex: /pizzapp/order/ordersubmit/
    path('ordersubmit/', views.orderinfo, name='orderinfo'), 
]
   

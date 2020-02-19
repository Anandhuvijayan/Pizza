from django.shortcuts import render

# Create your views here.
from django.views import generic
from .models import Product,Order,Productsize
from django.shortcuts import get_object_or_404
from django.db.models import Q 
from django.views.generic import  ListView, TemplateView

# Create class for display product view.

class SearchResultsView(ListView):
    model = Product
    template_name = 'search_results.html'



    def get_queryset(self): # new
        query = self.request.GET.get('q')
        
        object_list = Product.objects.filter(
            Q(p_size__icontains=query) | Q(p_qty__icontains=query)
        )
        return object_list


# Create class for display product detail view.
class ProductDetailView(generic.DetailView):
    model = Product
   
#Create function for Orderinformation
def orderinfo(request): 
    name = request.POST.get('cusname') 
    email = request.POST.get('email') 
    phone =  request.POST.get('phone') 

    pid = request.POST.get('hidval1')
    pname = request.POST.get('hidval3')
    psize = request.POST.get('hidval2')
    
    p = Order(product_name =pname,product_size=psize,customer_name=name, customer_email=email, customer_phone=phone)
    # Save the object into the database.  
    p.save()   
    orderlist =  Order.objects.all()
    product_info = get_object_or_404(Product, pk=pid)
    
    return render(request, 'pizzapp/orderlist.html', {'orderlist': orderlist,'pinfo':product_info})


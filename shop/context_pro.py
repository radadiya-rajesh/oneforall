from .models import Catagory

def context_data(request):
    c_data = Catagory.objects.all()
    return {'c_data':c_data}
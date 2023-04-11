from django.shortcuts import render
from django.shortcuts import render
from movies.models import Director
def index (request):
    print(Director.objects)
    return render(request, 'directors.html',context={'directors': Director.objects.all()})
# Create your views here.

from django.urls import path, include
from movies.views import index
urlpatterns = [    
    path('',index,name='index' ),
]
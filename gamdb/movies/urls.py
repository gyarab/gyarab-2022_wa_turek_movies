from django.urls import path, include
from movies.views import index
urlpatterns = [    
    path('reziseri/',index,name='index' ),
]
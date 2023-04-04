from django.contrib import admin
from movies.models import Movies,Director,Genre

class MovieAdmin(admin.ModelAdmin):
    list_display=('name','year','get_genres')

admin.site.register(Movies)
admin.site.register(Director)
admin.site.register(Genre)


# Register your models here.

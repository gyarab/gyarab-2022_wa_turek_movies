from django.db import models

class Movies(models.Model):
    name = models.CharField(max_length=200)
    year = models.IntegerField()
    description = models.TextField()
    director = models.ForeignKey('director',blank=True,null=True,on_delete=models.SET_NULL)
    genres = models.ManyToManyField('genre')
    def __str__(self):
        return "Movie " + str(self.id) + " - " + self.name
    def get_genres(self):
        return ", ".join([i.name for  i in self.genres.all()])
    class Meta:
        verbose_name = "Movie"
        verbose_name_plural = "Movies"
class Director(models.Model):
    name = models.CharField(max_length=255)
    birth_year = models.IntegerField(blank=True, null=True)
    def __str__(self):
        return  f"{self.name}({self.birth_year})"
class Genre(models.Model):
     name = models.CharField(max_length=255)
     def __str__(self):
        return  self.name
# Create your models here.

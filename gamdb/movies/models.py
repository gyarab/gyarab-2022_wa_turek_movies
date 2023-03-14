from django.db import models

class Movies(models.Model):
    name = models.CharField(max_length=200)
    year = models.IntegerField()
    description = models.TextField()
    def __str__(self):
        return "Movie " + str(self.id) + " - " + self.name
    class Meta:
        verbose_name = "Movie"
        verbose_name_plural = "Movies"

# Create your models here.

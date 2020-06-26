from django.db import models

class Book(models.Model):
    title = models.CharField(max_length=250)
    author = models.CharField(max_length=500)
    year = models.IntegerField()
    topic = models.CharField(max_length=250)

    def __str__(self):
        return self.title

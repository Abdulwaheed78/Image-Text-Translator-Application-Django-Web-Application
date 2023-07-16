from django.db import models

# Create your models here.

class Img2txt(models.Model):
    image=models.ImageField(upload_to='media')
    date=models.DateTimeField(auto_now_add=True)


class Translang(models.Model):
    country=models.CharField(max_length=25)
    c_code=models.CharField(max_length=25)

    def __str__(self):
        return "{} - {}".format(self.country, self.c_code)

class TransImg(models.Model):
    country=models.CharField(max_length=25)
    c_code=models.CharField(max_length=25)

    def __str__(self):
        return "{} - {}".format(self.country, self.c_code)
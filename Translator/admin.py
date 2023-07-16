from django.contrib import admin
from .models import TransImg, Translang


@admin.register(Translang)
class ratesAdmin(admin.ModelAdmin):
    list_display = ('id', 'country', 'c_code')


@admin.register(TransImg)
class ratesAdmin(admin.ModelAdmin):
    list_display = ('id', 'country', 'c_code')

# Register your models here.

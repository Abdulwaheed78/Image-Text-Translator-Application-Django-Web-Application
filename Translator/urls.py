from django.contrib import admin
from django.urls import path
from Translator import views

urlpatterns = [
    path('admin/', admin.site.urls),
    #calling image part
    path('',views.im,name='im'),
    #calling text part
    path('texttranslate/',views.main,name='main')
    
]

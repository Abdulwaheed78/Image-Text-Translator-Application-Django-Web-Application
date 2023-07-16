from unittest import result
from django.shortcuts import render, redirect, HttpResponse
from .models import Img2txt, TransImg, Translang  # this is the name of our model
import googletrans
# this is the google api that translate the our text given by the image
from googletrans import Translator
from PIL import Image
from pytesseract import pytesseract

import easyocr
import cv2


# defining  function for text translator application
def main(request):
    translang = Translang.objects.all()
    if request.method == 'POST':
        destination = request.POST.get('dest')
        text = request.POST.get('text')
        trans = Translator()
        lang_translate = trans.translate(text, dest=destination)
        result = lang_translate.text
        
        context = {
            'lang': translang,
            'org_text': text,
            'result': result,
            'destination': destination,
        }
        return render(request, 'texttranslate.html', context)
    context = {
        'lang': translang,

    }
    return render(request, 'texttranslate.html', context)
    # end  of text translate application


# starting of image recognition application

def im(request):
    translang = Translang.objects.all()
    imglang = TransImg.objects.all()
    if request.method == 'POST':
        im = Img2txt()
        im.image = request.FILES['image']
        im.save()
        photo = Img2txt.objects.all().last()
        last_img = photo.image
        source = request.POST['source']

        reader = easyocr.Reader([source])

        result = reader.readtext(str(last_img), detail=0, paragraph=True)
        var = ""
        for item in result:
            var = var+item
        final_result = var
        destination = request.POST.get('dest')
        trans = Translator()
        lang_translate = trans.translate(final_result, dest=destination)
        result2 = lang_translate.text

        context = {
            'result': final_result,
            'result2': result2,
            'destination_lang': translang,
            'source_lang': imglang,
            'destination': destination,
            'source': source,
            'last_img': last_img,
        }
        return render(request, 'main.html', context)
    context = {
        'destination_lang': translang,
        'source_lang': imglang
    }
    return render(request, 'main.html', context)
# end of image recognition appplication

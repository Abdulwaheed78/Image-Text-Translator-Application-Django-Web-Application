import os
import easyocr
import cv2
from matplotlib import pyplot as plt
import numpy as np
import googletrans
from googletrans import Translator
 


IMAGE_PATH = 'media/0Jl54_4G6zZft.png'
reader = easyocr.Reader(['en'])
result = reader.readtext(IMAGE_PATH,detail=0,paragraph=True)

var=""
for item in result:
    var=var+item
print(var)

trans=Translator()
res=trans.translate(var,dest='hi')
print(res.text)

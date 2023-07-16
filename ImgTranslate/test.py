import os
import easyocr
import cv2
from matplotlib import pyplot as plt
import numpy as np
import googletrans
from googletrans import Translator

IMAGE_PATH = 'media/images/saadi3.jpg'
reader = easyocr.Reader(['ur'])
result = reader.readtext(IMAGE_PATH,detail=0,paragraph=True)
ter=(tuple(result))
print(ter)
x=Translator()
res=x.translate(ter,dest='en')
print(res.text)
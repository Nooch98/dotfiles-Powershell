import os
import time
import webbrowser
import pyautogui
from time import sleep

input1 = input('Write the site where you search information: ')
input2 = input('Write the extension of the files you search: ')
input3 = input('Write the key words you search: ')

if input2 == '':
    webbrowser.open('https://www.google.es/search?q=site:'+input1+' intitle:'+input3)
    

if input3 == '':
    webbrowser.open('https://www.google.es/search?q=site:'+input1+' ext:'+input2)
   

elif input2 and input3 == '':
    webbrowser.open('https://www.google.es/search?q=site:'+input1)


else:
    result = webbrowser.open('https://www.google.es/search?q=site:'+input1+' ext:'+input2+' intitle:'+input3)

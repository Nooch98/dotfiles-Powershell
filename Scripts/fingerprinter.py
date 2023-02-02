import os
import time
from time import sleep
import webbrowser
import pyautogui

print('Welcome to fingerprinter the searcher of public information\n')

input1 = input('Write the site where you search information: ')
input2 = input('Write the extension of the files you search: ')
input3 = input('Write the key words you search: ')

result = webbrowser.open('https://www.google.es/search?q=site:'+input1+' ext:'+input2+' intitle:'+input3)
result



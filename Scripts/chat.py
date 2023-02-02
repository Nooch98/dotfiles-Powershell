import requests
import os
import webbrowser
import time
import pyautogui
from time import sleep

def search_model():
    input1 = input('Que desea buscar: ')
    webbrowser.open('https://es.stripchat.com/' + input1)
    webbrowser.open('www.cam4.com/' + input1)
    webbrowser.open('www.google.com/search?q=' + input1)

def ver_violeta():
    webbrowser.open("https://es.stripchat.com/korin-violeta")
    return

def ver_dulce():
    webbrowser.open("https://es.stripchat.com/dulce-20")
    return

def check_page():
    input2 = input('Quien desea comprobar: ')
    webbrowser.open('https://es.stripchat.com/girls/latin')
    sleep(10)
    pyautogui.hotkey('ctrl', 'f')
    pyautogui.write(input2)
    pyautogui.press('return')
    pyautogui.press('ESC')
    pyautogui.press('return')
    return

def check_models():
    os.system('cls')
    print('Elige la pagina de la modelo que desea comprobar')

    print('1-StripChat')
    print('***********')
    print('2-Bongacams')
    print('***********')
    print('3-Cam4')
    print('***********')
    print('4-Chatturbate')
    print('***********')
    print('5-Google')
    print('***********\n')

    while True:
        input4 = input('Que web desea comprobar: ')

        if input4 == "1":
            input41 = input('Indique el nombre de la modelo: ')
            webbrowser.open('https://es.stripchat.com/'+ input41)
            break
        if input4 == "2":
            input42 = input('Indique el nombre de la modelo: ')
            webbrowser.open('https://es.bongacams.com/'+ input42)
            break
        if input4 == "3":
            input43 = input('Indique el nombre de la modelo: ')
            webbrowser.open('www.cam4.com/'+ input43)
            break
        if input4 == "4":
            input44 = input('Indique el nombre de la modelo: ')
            webbrowser.open('https://chaturbate.com/'+ input44)
            break
        if input4 == "5":
            input45 = input('Indique el nombre de la modelo: ')
            webbrowser.open('https://www.google.com/search?q='+ input45)
            break
        pass
    return

            
print('A QUIEN DESEA VISITAR')

print('1-Violeta')
print('***********')
print('2-Dulce-20')
print('***********')
print('3-Buscar Modelo')
print('***********')
print('4-Comprobar Modelo')
print('***********')
print('5-Otras')
print('***********\n')

while True:
    input_ = input('A QUIEN QUIERE VISITAR: ')

    if input_ == "1":
        ver_violeta()
        break
    if input_ == "2":
        ver_dulce()
        break
    if input_ == "3":
        search_model()
        break
    if input_ == "4":
        check_page()
        break
    if input_ == "5":
        check_models()
        break
    pass

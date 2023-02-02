import os
import pyautogui
import time
from time import sleep



def reload():
    pyautogui.hotkey('alt', 'F4')
    sleep(1)
    pyautogui.hotkey('ctrl', 'super', 'k')
    sleep(0.5)
    pyautogui.write('wt')
    pyautogui.press('return')
    sleep(5)
    pyautogui.write('valdeaverolom')
    pyautogui.press('return')
    return

reload()


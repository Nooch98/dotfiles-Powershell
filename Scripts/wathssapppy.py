from selenium import webdriver

inputc = input('Introduzca Nombre del Contacto: ')
inputt = input('Introduzca su mensaje: ')

driver = webdriver.Chrome()

driver.get("https://web.whatsapp.com/")

input('Presione enter una vez que haya escaneado el codigo QR')


contact = driver.find_element_by_xpath('//span[@title = "inputc"]')
contact.click()

text_box = driver.find_element_by_class_name('_3uMse')

text_box.send_keys(inputt)

driver.find_element_by_class_name('_3M-N-').click()

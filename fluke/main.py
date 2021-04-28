#!/usr/bin/env python3
import serial
import pygame

fluke_device = "/dev/ttyUSB0"

SIRINA = 400
VISINA = 160
FPS = 60

pygame.init()
zaslon = pygame.display.set_mode((SIRINA,VISINA))
clock = pygame.time.Clock()
done = False

pygame.display.set_caption('Fluke multimeter interface')
pygame.font.init()

pisava_vrednost = pygame.font.Font("dseg7.ttf", 60)
pisava_enota = pygame.font.Font("roboto.ttf", 35)

def getLine(serial_device):
	out = ""
	while True:
		s = serial_device.read()
		if(s == b"\r"):
			break
		else:
			out += s.decode("utf-8")
	return out

def toNum(string):
	temp = 0
	pozicija_pike = string.find(".")
	i = pozicija_pike - 1
	veckratnik = 1
	while(i > 0):
		temp += veckratnik * int(string[i])
		veckratnik *= 10
		i -= 1
	i = pozicija_pike + 1
	veckratnik = 0.1
	while(i < len(string)):
		temp += veckratnik * int(string[i])
		veckratnik /= 10
		i += 1
	if(string[0] == "-"):
		temp *= -1
	# print(type(temp))
	# print(temp)
	return round(temp, 4)

def get_text_multi(serial_device):
	serial_device.write(b"QM\r")
	getLine(serial_device) # zneba ničle
	measure = getLine(serial_device)
	#print("Dobil: " + measure)
	measure = measure.split(",")
	measuree = measure[1].split(" ")
	#print(measuree)

	if(len(measuree) > 3):
		return "0L", "", None
	else:
		measuree[0] = toNum(measuree[0])
		if(len(measuree) == 3):
			if(measuree[1] == ""):
				return str(measuree[0]), measuree[2], None
			elif(measuree[1] == "Deg"):
				return str(measuree[0]), " °"+measuree[2], None
			else:
				return str(measuree[0]), measuree[1], measuree[2]
		elif(len(measuree) == 2):
			return str(measuree[0]), measuree[1], None

fluke = serial.Serial(fluke_device)

while not done:
	for event in pygame.event.get():  
		if event.type == pygame.QUIT:  
			done = True  
	zaslon.fill((221,230,234))

	vrednost, enota, dodatek = get_text_multi(fluke)
	enota = enota.replace("Ohms", "Ω")
	enota = enota.replace("Farads", "F")
	napis_vrednost = pisava_vrednost.render(vrednost, False, (46,49,51))
	napis_enota = pisava_enota.render(enota, True, (46,49,51))
	w_vrednosti = napis_vrednost.get_width()
	x_vrednosti = (zaslon.get_width()-w_vrednosti-napis_enota.get_width()-10)/2
	y_obeh = (zaslon.get_height()-napis_vrednost.get_height())/2
	zaslon.blit(napis_vrednost, (x_vrednosti,y_obeh))
	zaslon.blit(napis_enota, (x_vrednosti+w_vrednosti+10,y_obeh-7))
	if(dodatek != None):
		napis_dodatek = pisava_enota.render(dodatek, True, (46,49,51))
		zaslon.blit(napis_dodatek, (x_vrednosti+w_vrednosti+10,zaslon.get_height()/2-5))
	pygame.display.update()

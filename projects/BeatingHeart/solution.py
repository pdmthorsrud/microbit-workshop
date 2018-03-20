# Add your Python code here. E.g.
from microbit import *


while True:
    melding = "Testmelding"
    uart.write(byte(melding, 'utf-8'))

from microbit import *

if accelerometer.current_gesture() == "face up":
    display.show(Image.ANGRY)
else:
    display.show(Image.HAPPY)


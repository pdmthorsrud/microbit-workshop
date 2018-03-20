import processing.serial.*;
Serial port;

void setup() {
  printArray(Serial.list());
  port = new Serial(this, Serial.list()[7], 115200);
  port.bufferUntil(10);
  size(512, 512);
}

void draw() {
}

void serialEvent(Serial port) {
  String inData = port.readString();
  if (inData.charAt(0) == 'm') {
    inData = inData.substring(1);
    inData = trim(inData);
    String items[] = (split(inData, ' '));
    println("x=" + items[0] + " y=" + items[1] + " z=" + items[2]);
  }

}
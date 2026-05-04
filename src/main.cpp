#include <Arduino.h>

void setup() {
    Serial.begin(115200);
    Serial.println("Hello from Docker iPad!");
}

void loop() {
    delay(1000);
}

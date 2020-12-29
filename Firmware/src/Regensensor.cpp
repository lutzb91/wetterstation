#include "Regensensor.h"

#define PIN 2
#define DEBOUNCE_TIME 200
#define MM_PER_COUNT 0.2794

Regensensor *thisPtr = NULL;

void _count() {
    if(thisPtr) {
        thisPtr->count();
    }
}

bool Regensensor::begin() {
    pinMode(PIN, INPUT_PULLUP);
    thisPtr = this;
    attachInterrupt(digitalPinToInterrupt(PIN), _count, RISING);
    debounce = millis();
    return true;
}

int Regensensor::getErrorCode() {
    return 0;
}

float Regensensor::getValue() {
    return counter * MM_PER_COUNT;
}

void Regensensor::loop() {

}

void Regensensor::count() {
    if(millis() - debounce > DEBOUNCE_TIME) {
        counter++;
        debounce = millis();
    }
}
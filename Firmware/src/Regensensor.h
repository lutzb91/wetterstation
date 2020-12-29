#pragma once

#include <Arduino.h>
#include "ISensor.h"

/**
 * @brief Regensensor, welcher die Regenmenge in l/mm^2 ermittelt.
 * 
 */
class Regensensor : public ISensor {
    public:
        bool begin();
        int getErrorCode();
        float getValue();
        void loop();
        void count();

        const __FlashStringHelper* getName() {
            return F("Regensensor");
        }
    
    private:
        int counter = 0;
        unsigned long debounce = 0;
};
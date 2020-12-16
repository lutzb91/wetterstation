#pragma once

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

        const __FlashStringHelper* getName() {
            return F("Regensensor");
        }
};
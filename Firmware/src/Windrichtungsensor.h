#pragma once

#include "ISensor.h"

/**
 * @brief Windrichtungsensor, welche die Windrichtung ermittelt.
 * 
 */
class Windrichtungsensor : public ISensor {
    private:
    public:
        bool begin();
        int getErrorCode();
        float getValue();
        void loop();

        const __FlashStringHelper* getName() {
            return F("Windrichtungsensor");
        }
};
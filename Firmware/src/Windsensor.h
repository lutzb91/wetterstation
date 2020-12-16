#pragma once

#include "ISensor.h"

/**
 * @brief Windsensor, welche die Windgeschwindigkeit in km/h ermittelt.
 * 
 */
class Windsensor : public ISensor {
    private:
    public:
        bool begin();
        int getErrorCode();
        float getValue();
        void loop();

        const __FlashStringHelper* getName() {
            return F("Windsensor");
        }
};
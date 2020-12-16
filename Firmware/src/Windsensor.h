#pragma once

#include "ISensor.h"

/**
 * @brief Windsensor, welche die Windgeschwindigkeit in km/h ermittelt.
 * 
 */
class Windsensor : public ISensor {
    private:
    public:
        int begin();
        float getValue();
        void loop();
};
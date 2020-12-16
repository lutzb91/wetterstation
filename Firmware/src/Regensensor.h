#pragma once

#include "ISensor.h"

/**
 * @brief Regensensor, welcher die Regenmenge in l/mm^2 ermittelt.
 * 
 */
class Regensensor : public ISensor {
    public:
        int begin();
        float getValue();
        void loop();
};
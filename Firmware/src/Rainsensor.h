#pragma once

#include "ISensor.h"

class Rainsensor : public ISensor {
    public:
        void begin(int pin);
        float getValue();
        void loop();
};
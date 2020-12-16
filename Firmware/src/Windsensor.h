#pragma once

#include "ISensor.h"

class Windsensor : public ISensor {
    private:
    public:
        void begin(int pin);
        float getValue();
        void loop();
};
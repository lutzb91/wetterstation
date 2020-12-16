#pragma once

#include <Arduino.h>

class ISensor {
    public:
        /**
         * @brief Startet den Sensor. Liefert false im Fehlerfall, sonst true.
         * 
         * @return bool  false im Fehlerfall, sonst true
         */
        virtual bool begin() = 0;
        /**
         * @brief Liefert im Fehlerfall einen sprechenden Fehlercode.
         * 
         * @return int 
         */
        virtual int getErrorCode() = 0;
        /**
         * @brief Loopfunktion des Sensors. Wird aus dem Hauptloop aufgerufen.
         * 
         */
        virtual void loop() = 0;
        /**
         * @brief Liefert den Namen des Sensors zur Anzeige. Muss mit F("...") zurueckgegeben werden.
         * 
         * @return const __FlashStringHelper* 
         */
        virtual const __FlashStringHelper* getName() = 0;
};
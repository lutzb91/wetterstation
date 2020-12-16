#pragma once

class ISensor {
    public:
        /**
         * @brief Startet den Sensor. Liefert im Fehlerfall 0.
         * 
         * @return int  0 bei Fehler
         */
        virtual int begin() = 0;
        /**
         * @brief Loopfunktion des Sensors. Wird aus dem Hauptloop aufgerufen.
         * 
         */
        virtual void loop() = 0;
};
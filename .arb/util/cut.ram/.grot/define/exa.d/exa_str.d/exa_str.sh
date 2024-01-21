#!/bin/bash

echo "I looked at my watch; not eight o'clock." | cut -b 5,8,17 
# oda
echo "Still I opened the gate, and put the petrol pump in readiness." | cut -b 38-43 
# petrol
echo "He was extraordinarily particular about politeness in others." | cut -d ' ' -f 1,3,5
#He extraordinarily about
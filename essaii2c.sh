#!/bin/bash

heure = i2cget -y 1 0x32 0x02 
echo $heure

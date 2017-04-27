#!/bin/bash

seconde	= 	i2cget -y 1 0x32 0x00
minute	=	i2cget -y 1 0x32 0x01
heure	= 	i2cget -y 1 0x32 0x02 
jour	=	i2cget -y 1 0x32 0x04
mois	=	i2cget -y 1 0x32 0x05
annee	=	i2cget -y 1 0x32 0x06

#on va tester chacun des points et convertir sa valeur exadécimale en valeur décimale
if [$seconde & (1u <<0)]
then
		echo "+1sec"
else
		echo "+0sec"
fi

	
echo $heure

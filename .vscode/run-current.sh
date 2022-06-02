#!/bin/bash

cd /home/realgecko/.winehw2/dosdevices/c:/Games/Homeworld2/Bin/Release/
env WINEPREFIX="/home/realgecko/.winehw2" /usr/bin/wine Homeworld2.exe -windowed -w 1920 -h 1080 -noMovies -hardwareCursor -heap 512 -noVideoErrors -truecolor -luatrace -overridebigfile
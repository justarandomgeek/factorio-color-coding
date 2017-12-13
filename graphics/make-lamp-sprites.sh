#!/bin/bash

C=15

for f in hr-lamp lamp ; do
  convert ./lamp/_source/$f.png -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/red/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/orange/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/yellow/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/green/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/cyan/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/blue/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/purple/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/_source/$f-base.png -composite ./lamp/magenta/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  ./lamp/_source/$f-base.png -composite ./lamp/white/$f.png
  convert ./lamp/_source/$f.png -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" ./lamp/_source/$f-base.png -composite ./lamp/black/$f.png

  convert ./lamp/_source/$f-light.png -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/red/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/orange/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/yellow/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/green/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/cyan/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/blue/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/purple/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./lamp/magenta/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  ./lamp/white/$f-light.png
  convert ./lamp/_source/$f-light.png -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" ./lamp/black/$f-light.png
done

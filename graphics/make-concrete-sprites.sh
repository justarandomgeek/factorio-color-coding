#!/bin/bash

C=15

for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(255,127,0)" -level "0%,70%,1.2"  ./concrete/white/$f ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(0,0,0)"     -level "0%,100%,0.4" ./concrete/black/$f ; done

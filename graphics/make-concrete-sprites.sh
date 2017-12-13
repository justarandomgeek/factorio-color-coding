#!/bin/bash

C=15

for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/red/$f      ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/orange/$f   ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/yellow/$f   ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/green/$f    ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/cyan/$f     ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/blue/$f     ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/purple/$f   ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" ./concrete/magenta/$f  ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  ./concrete/white/$f    ; done
for f in $(ls -1 ./concrete/_source) ; do convert ./concrete/_source/$f -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" ./concrete/black/$f    ; done

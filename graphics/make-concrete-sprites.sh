#!/bin/bash

C=15

source=./_source/concrete
mask=./_source/mask
concrete=./concrete

#Regenerate source concrete icon and the combined SAMPLE_ONLY.
rm $source/icon.png $source/SAMPLE_ONLY.png
#convert $source/*.png -append -transparent white $source/SAMPLE_ONLY.png
convert $source/concrete4.png -crop 32x32+0+0\! $source/icon.png

#Color Solid
echo Color Solid
for f in $(ls -1 $source) ; do mkdir -p $concrete/red;     convert $source/$f -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/red/$f      ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/orange;  convert $source/$f -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/orange/$f   ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/yellow;  convert $source/$f -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/yellow/$f   ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/green;   convert $source/$f -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/green/$f    ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/cyan;    convert $source/$f -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/cyan/$f     ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/blue;    convert $source/$f -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/blue/$f     ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/purple;  convert $source/$f -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/purple/$f   ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/magenta; convert $source/$f -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" $concrete/magenta/$f  ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/white;   convert $source/$f -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  $concrete/white/$f    ; done
for f in $(ls -1 $source) ; do mkdir -p $concrete/black;   convert $source/$f -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" $concrete/black/$f    ; done

#Color Diagonal Left
echo Color Diagonal Left
for f in $(ls -1 $source) ; do output=red-diagonal-left ;     mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=orange-diagonal-left ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=yellow-diagonal-left ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=green-diagonal-left ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=cyan-diagonal-left ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=blue-diagonal-left ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=purple-diagonal-left ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=magenta-diagonal-left ; mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=white-diagonal-left ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=black-diagonal-left ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" \) \( $mask/diagonal.png -alpha extract        \) -compose SrcIn -composite $concrete/$output/$f ; done

#Color Diagonal Right
echo Color Diagonal Right
for f in $(ls -1 $source) ; do output=red-diagonal-right ;     mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=orange-diagonal-right ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=yellow-diagonal-right ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=green-diagonal-right ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=cyan-diagonal-right ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=blue-diagonal-right ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=purple-diagonal-right ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=magenta-diagonal-right ; mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=white-diagonal-right ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=black-diagonal-right ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" \) \( $mask/diagonal.png -alpha extract -flop \) -compose SrcIn -composite $concrete/$output/$f ; done

#Color Stripe Vertical
echo Color Stripe Vertical
for f in $(ls -1 $source) ; do output=red-stripe-vertical ;     mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=orange-stripe-vertical ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=yellow-stripe-vertical ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=green-stripe-vertical ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=cyan-stripe-vertical ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=blue-stripe-vertical ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=purple-stripe-vertical ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=magenta-stripe-vertical ; mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=white-stripe-vertical ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=black-stripe-vertical ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f ; done

#Color Stripe Horizontal
echo Color Stripe Horizontal
for f in $(ls -1 $source) ; do output=red-stripe-horizontal ;     mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=orange-stripe-horizontal ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=yellow-stripe-horizontal ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,255,0)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=green-stripe-horizontal ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=cyan-stripe-horizontal ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,255,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=blue-stripe-horizontal ;    mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,255)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=purple-stripe-horizontal ;  mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(127,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=magenta-stripe-horizontal ; mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,0,255)" -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=white-stripe-horizontal ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(255,127,0)"                      -level "0%,70%,1.2"  \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done
for f in $(ls -1 $source) ; do output=black-stripe-horizontal ;   mkdir -p $concrete/$output ; convert $source/$f \( +clone -fill "rgb(0,0,0)"                          -level "0%,100%,0.4" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f ; done

#Specialty Colors
echo Specialty Colors
C=50

echo Fire-Hazard
for f in $(ls -1 $source) ; do
    output=fire-hazard-diagonal-left
    mkdir -p $concrete/$output
    convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f
    output=fire-hazard-diagonal-right
    mkdir -p $concrete/$output
    convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/diagonal.png -alpha extract -flop      \) -compose SrcIn -composite $concrete/$output/$f
    output=fire-hazard-stripe-vertical
    mkdir -p $concrete/$output
    convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract            \) -compose SrcIn -composite $concrete/$output/$f
    output=fire-hazard-stripe-horizontal
    mkdir -p $concrete/$output
    convert $source/$f \( +clone -fill "rgb(255,0,0)"   -colorize $C,$C,$C,0 -level "0%,100%,0.8" \) \( $mask/stripe.png -alpha extract -rotate 90 \) -compose SrcIn -composite $concrete/$output/$f
done


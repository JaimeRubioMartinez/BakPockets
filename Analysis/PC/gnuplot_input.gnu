#!/usr/bin/gnuplot
#
# Interpolating a heat map
#
# AUTHOR: Hagen Wierstorf
# VERSION: gnuplot 4.6 patchlevel 0

reset

# png
set terminal png size 1000,1000 enhanced font 'Verdana,20'
set output 'bak.png'

unset key

# border
set style line 11 lc rgb '#808080' lt 1
set tics nomirror out scale 0.75

set xrange [-20:20]
set yrange [-20:20]
set xlabel 'PC1'
set ylabel 'PC2'

# disable colorbar tics
set cbtics scale 0
set cbtics 0,3,18

# matlab palette colors
set palette defined ( 0 "#000010",\
                      1 "#000fff",\
                      2 "#0090ff",\
                      3 "#0fffee",\
                      4 "#90ff70",\
                      5 "#ffee00",\
                      6 "#ff7000",\
                      7 "#ee0000",\
                      8 "#7f0000")

set view map
set pm3d interpolate 500,500
splot 'bak.his' u 1:2:3 w pm3d
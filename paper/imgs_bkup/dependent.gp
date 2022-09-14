# length/width ratio and terminal
set size ratio 0.5
set terminal postscript color enhanced  
set output 'dependent.ps'

# Title
unset title

# Margins
set tmargin -3
set bmargin -2
set rmargin 0
set lmargin 4

# border
set border 3 front linetype -1 linewidth 1.000

# Boxes
set boxwidth 0.95 absolute
set style fill   solid 1.00 noborder

# line styles
set linetype 1 lt -1 lw 1 lc rgb "#0000FF" 
set linetype 2 lt -1 lw 1 lc rgb "#000000"

set linetype cycle 2

# Grid
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   linetype 0 linewidth 3.000,  linetype 0 linewidth 1.000

# Key
set key nobox autotitles columnhead Left reverse left
set key font "Arial,32"
set key width 10
set key samplen 2
set key spacing 4
set key maxrows 2

# style - histogram
set style histogram clustered gap 1 title  offset character 2, 0.25, 0
set datafile missing '-'
set style data histograms

# Axis
set xtics border in scale 0,0 nomirror   offset character 0.5, -0.5, 2 autojustify
set xtics norangelimit font ",30"
set xtics   ()

set logscale y
set yrange [ 0.01 : 100 ]
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ytics font ",30"

set xlabel font "Arial,32"
set xlabel "\nPercentage of Dependent Updates" 
set xlabel  offset character 0, 0, 0  norotate

set ylabel "Runtime (sec)" 
set ylabel font "Arial,32"


# Plot command
plot 'dependent.csv' using 2 t col, '' using 3:xtic(1) t col
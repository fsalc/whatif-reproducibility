# length/width ratio and terminal
set size ratio 0.5
set terminal postscript color enhanced  
set output 'totalCostMahif10.ps'

# Margins
set tmargin 0
set bmargin 12
set rmargin 0
set lmargin 4

# border
set border 3 front linetype -1 linewidth 1.000
set boxwidth 0.95 absolute
set style fill   solid 1.00 noborder

# line styles
set linetype 1 lt -1 lw 1 lc rgb "#FF0000"
set linetype 2 lt -1 lw 1 lc rgb "#00FF00" 
set linetype 3 lt -1 lw 1 lc rgb "#0000FF"
#set linetype 4 lt -1 lw 1 lc rgb "#000000" 

set linetype cycle 3

# Grid
set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   linetype 0 linewidth 3.000,  linetype 0 linewidth 1.000

# Key
set key nobox autotitles columnhead Left reverse left
set key font "Arial,32"
#set key height -4
set key width 10
set key samplen 2
set key spacing 4
set key maxrows 2
#set key at -0.5,1000

# style - histogram
set style histogram clustered gap 0.2 title  offset character 2, 0.25, 0
set datafile missing '-'
set style data histograms
#set style histogram rowstacked

# Axis
set xtics border in scale 0,0 nomirror rotate by 90  offset character 0, -5, 0 autojustify
set xtics norangelimit font ",26"
set xtics   ()

set logscale y
set yrange [ 0.001 : 10000 ]
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ytics font ",23"

set xlabel font "Arial,30"
set xlabel "\nDatabase Size and Updates for T10" 
set xlabel  offset character 0, -5, 0  norotate

set ylabel "Runtime (sec)" 
set ylabel font "Arial,30"
set ylabel offset character -0.4, -6, 0

# Plot command
plot newhistogram "{/Arial=23 U10}" lt 1 , 'totalCostMahif10.csv' using 2:xtic(1) t col, '' using 3:xtic(1) t col, '' using 4:xtic(1) t col, \
	 newhistogram "{/Arial=23 U100}" lt 1 , '' u 5:xtic(1) notitle , '' u 6 notitle, '' u 7 notitle,  \
	 newhistogram "{/Arial=23 U1000}" lt 1 , '' u 8:xtic(1) notitle , '' u 9 notitle, '' u 10 notitle, \
	 newhistogram "{/Arial=23 U6000}" lt 1, '' u 11:xtic(1) notitle, '' u 12 notitle, '' u 13 notitle


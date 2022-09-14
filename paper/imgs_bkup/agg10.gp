set size ratio 0.4
set terminal postscript color enhanced
set output 'agg10.ps'
unset title

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
set linetype 1 lt -1 lw 1 lc rgb "#000000"
set linetype 2 lt -1 lw 1 lc rgb "#00FF00" 
set linetype 3 lt -1 lw 1 lc rgb "#0000FF"

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

# Axis
set xtics border in scale 0,0 nomirror rotate by 90  offset character 0, -5, 0 autojustify
set xtics norangelimit font ",26"
set xtics   ()

set logscale y
set yrange [ 0.1 : 10000 ]
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autojustify
set ytics font ",23"

set xlabel font "Arial,30"
set xlabel "\nDatabase Size and Updates for T10" 
set xlabel  offset character 0, -5, 0  norotate

set ylabel "Runtime (sec)" 
set ylabel font "Arial,30"
set ylabel offset character 1, -6, 0

# Plot command
plot newhistogram "{/Arial=23 U10}" lt 1 , 'agg10.csv' using 2:xtic(1) t col, '' using 3:xtic(1) t col, '' using 4 t col, '' using 5 t col,'' using 6:xtic(1) t col, '' using 7 t col, '' using 8 t col,  \
	 newhistogram "{/Arial=23 U100}" lt 1 , '' u 9:xtic(1) notitle , '' u 10:xtic(1) notitle , '' u 11:xtic(1) notitle, '' u 12 notitle, '' u 13 notitle, '' u 14:xtic(1) notitle , '' u 15:xtic(1) notitle, \
	 newhistogram "{/Arial=23 U1000}" lt 1 , '' u 16:xtic(1) notitle , '' u 17:xtic(1) notitle , '' u 18:xtic(1) notitle, '' u 19 notitle, '' u 20 notitle, '' u 21:xtic(1) notitle , '' u 22:xtic(1) notitle, \
	 newhistogram "{/Arial=23 U6000}" lt 1, '' u 23:xtic(1) notitle , '' u 24:xtic(1) notitle , '' u 25:xtic(1) notitle, '' u 26 notitle, '' u 27 notitle, '' u 28:xtic(1) notitle , '' u 29:xtic(1) notitle

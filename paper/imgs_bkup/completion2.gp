set terminal postscript color enhanced
set output 'completion2.ps'
unset title

set tmargin 0
set bmargin 12
set rmargin 0
set lmargin 4

set border 3 front linetype -1 linewidth 1.000
set boxwidth 0.8 absolute
set style fill   solid 1.00 noborder

set grid nopolar
set grid noxtics nomxtics ytics nomytics noztics nomztics \
 nox2tics nomx2tics noy2tics nomy2tics nocbtics nomcbtics
set grid layerdefault   linetype 0 linewidth 1.000,  linetype 0 linewidth 1.000

set key nobox autotitles columnhead Left reverse left
set key font "Arial,24"
set key width 10
set key samplen 2
set key spacing 4
set key maxrows 3

set style histogram rowstacked #title  offset character 2, 0.25, 0
set datafile missing '-'
set style data histograms
set datafile separator ";"

set xtics border in scale 1,0.5 nomirror rotate by -90  offset character 0, 0, 0 
set xtics font "Arial,20"
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autofreq 
set ytics font "Arial,20"
set xlabel "\nDatabase Size and Updates for T0" font "Arial,24" offset 0,-2
set ylabel "Runtime (sec)" font "Arial,24" offset -2,0
set yrange [0.01: 3000.] noreverse nowriteback


plot newhistogram "{/Arial=20 U10}" lt 1, 'completion2.csv' using 2:xtic(1) , '' u 3 , '' u 4 , '' u 5 , '' u 6 , '' u 7, \
newhistogram "{/Arial=20 U100}" lt 1, '' u 8:xtic(1) notitle, '' u 9 notitle, '' u 10 notitle, '' u 11 notitle, '' u 12 notitle, '' u 13 notitle, \
newhistogram "{/Arial=20 U1000}" lt 1, '' u 14:xtic(1) notitle, '' u 15 notitle, '' u 16 notitle, '' u 17 notitle, '' u 18 notitle, '' u 19 notitle, \
newhistogram "{/Arial=20 U6000}" lt 1, '' u 20:xtic(1) notitle, '' u 21 notitle, '' u 22 notitle, '' u 23 notitle, '' u 24 notitle, '' u 25 notitle

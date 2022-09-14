set terminal postscript color enhanced
set output 'completion.ps'
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
set key width -13
set key samplen 2
set key spacing 4
set key maxrows 6

set style line 1 lt -1 lw 1 lc rgb "#FF0000" 
set style line 2 lt -1 lw 1 lc rgb "#00FF00"
set style line 3 lt -1 lw 1 lc rgb "#0000FF"
set style line 6 lt -1 lw 1 lc rgb "#FFFF00"
set style line 4 lt -1 lw 1 lc rgb "#F6765E"
set style line 5 lt -1 lw 1 lc rgb "#1D008D"

set style line 7 lt -1 lw 1 lc rgb "#FF0000" 
set style line 8 lt -1 lw 1 lc rgb "#00FF00"
set style line 9 lt -1 lw 1 lc rgb "#0000FF"
set style line 12 lt -1 lw 1 lc rgb "#FFFF00"
set style line 10 lt -1 lw 1 lc rgb "#F6765E"
set style line 11 lt -1 lw 1 lc rgb "#1D008D"

set style line 13 lt -1 lw 1 lc rgb "#FF0000" 
set style line 14 lt -1 lw 1 lc rgb "#00FF00"
set style line 15 lt -1 lw 1 lc rgb "#0000FF"
set style line 18 lt -1 lw 1 lc rgb "#FFFF00"
set style line 16 lt -1 lw 1 lc rgb "#F6765E"
set style line 17 lt -1 lw 1 lc rgb "#1D008D"

set style line 19 lt -1 lw 1 lc rgb "#FF0000" 
set style line 20 lt -1 lw 1 lc rgb "#00FF00"
set style line 21 lt -1 lw 1 lc rgb "#0000FF"
set style line 24 lt -1 lw 1 lc rgb "#FFFF00"
set style line 22 lt -1 lw 1 lc rgb "#F6765E"
set style line 23 lt -1 lw 1 lc rgb "#1D008D"

set style line 25 lt -1 lw 1 lc rgb "#FF0000" 
set style line 26 lt -1 lw 1 lc rgb "#00FF00"
set style line 27 lt -1 lw 1 lc rgb "#0000FF"
set style line 30 lt -1 lw 1 lc rgb "#FFFF00"
set style line 28 lt -1 lw 1 lc rgb "#F6765E"
set style line 29 lt -1 lw 1 lc rgb "#1D008D"

set style line 31 lt -1 lw 1 lc rgb "#FF0000" 
set style line 32 lt -1 lw 1 lc rgb "#00FF00"
set style line 33 lt -1 lw 1 lc rgb "#0000FF"
set style line 36 lt -1 lw 1 lc rgb "#FFFF00"
set style line 34 lt -1 lw 1 lc rgb "#F6765E"
set style line 35 lt -1 lw 1 lc rgb "#1D008D"


set style increment user


set style histogram rowstacked #title  offset character 2, 0.25, 0
set datafile missing '-'
set style data histograms
set datafile separator ";"

set xtics border in scale 1,0.5 nomirror rotate by -90  offset character 0, 0, 0 
set xtics font "Arial,20"
set ytics border in scale 0,0 mirror norotate  offset character 0, 0, 0 autofreq 
set ytics font "Arial,20"
set xlabel "\nWindow Size" font "Arial,24" offset 0,-2
set ylabel "Completion Time (sec)" font "Arial,24" offset -2,0
set yrange [0.0: ] noreverse nowriteback

plot newhistogram "{/Arial=20 10}" lt 1, 'completion.csv' using ($2/1000):xtic(1) , '' u ($3/1000) , '' u ($4/1000) , '' u ($5/1000) , '' u ($6/1000) , '' u ($7/1000), \
newhistogram "{/Arial=20 20}" lt 1, '' u ($8/1000):xtic(1) notitle, '' u ($9/1000) notitle, '' u ($10/1000) notitle, '' u ($11/1000) notitle, '' u ($12/1000) notitle, '' u ($13/1000) notitle, \
newhistogram "{/Arial=20 40}" lt 1, '' u ($14/1000):xtic(1) notitle, '' u ($15/1000) notitle, '' u ($16/1000) notitle, '' u ($17/1000) notitle, '' u ($18/1000) notitle, '' u ($19/1000) notitle, \
newhistogram "{/Arial=20 60}" lt 1, '' u ($20/1000):xtic(1) notitle, '' u ($21/1000) notitle, '' u ($22/1000) notitle, '' u ($23/1000) notitle, '' u ($24/1000) notitle, '' u ($25/1000) notitle, \
newhistogram "{/Arial=20 80}" lt 1, '' u ($26/1000):xtic(1) notitle, '' u ($27/1000) notitle, '' u ($28/1000) notitle, '' u ($29/1000) notitle, '' u ($30/1000) notitle, '' u ($31/1000) notitle,\
newhistogram "{/Arial=20 100}" lt 1, '' u ($32/1000):xtic(1) notitle, '' u ($33/1000) notitle, '' u ($34/1000) notitle, '' u ($35/1000) notitle, '' u ($36/1000) notitle, '' u ($37/1000) notitle

##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
#### 		      		All spectra together			       	  #### 
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# gnuplot> load 'macro.p'

# set terminal, output
set term postscript eps  enhanced "Helvetica,12" color
set output "all_spectra.eps"

# set labels
set log
set xlabel "h {/Symbol n} (keV)"  font "Bold" 
set ylabel "Flux (erg/cm^2-s-keV)"  font "Bold" 
set title "Spectra for several Relative Luminosities for \n X = 0.74, Z = 0.01Z_{solar}, T_{Edd} = 1.703 keV, log g = 14.0" font "Vera,16"


#set styles
#set palette rgbformulae 33,13,10 
set border linewidth 2
set tics scale 1.25
set pointsize 1.0

set style line 1  lc rgb '#0015ad' lt 1 lw 1.5 # --- blue
set style line 2  lc rgb '#0042ad' lt 1 lw 1.5 #      .
set style line 3  lc rgb '#0060ad' lt 1 lw 1.5 #      .
set style line 4  lc rgb '#007cad' lt 1 lw 1.5 #      .
set style line 5  lc rgb '#0099ad' lt 1 lw 1.5 #      .
set style line 6  lc rgb '#00ada4' lt 1 lw 1.5 #      .
set style line 7  lc rgb '#00ad88' lt 1 lw 1.5 #      .
set style line 8  lc rgb '#00ad6b' lt 1 lw 1.5 #      .
set style line 9 lc rgb '#00ad4e' lt 1 lw 1.5 #      .

# effective temperature
Teff = 1.703*.5**.25

# speed of light, cm/s
sol=3.e10	

# Planck constant, keV-s	
hkeV=4.136e-18	

# keV per erg	
keVpererg=6.24150974e8	


# inputs from the problem
# one output cycle
a=1


plot [0.5:40][0.5e20:0.5e25] "datamg_005.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.05 " ls 1,    "datamg_02.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.2 " ls 2,                               "datamg_03.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.3  " ls 3,                              "datamg_04.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.4  " ls 4,                              "datamg_05.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.5  " ls 5,                              "datamg_06.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.6  " ls 6,                               "datamg_07.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.7  " ls 7,                              "datamg_08.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.8  " ls 8,                              "datamg_09.out" i a u ($1*.001):($2*sol/hkeV) t "l=0.9  " ls 9                               



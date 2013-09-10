##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
####  			Temperature as a function of radius 			     #### 
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# gnuplot> load 'macro.p'


# set terminal, output
set term postscript eps  enhanced "Helvetica,12" color
set output "T_vs_r.eps"


# set labels
unset log
set xlabel "r (cm)" font "Bold" 
set ylabel "T (eV)" font "Bold" 
set title "Temperature vs. Radius for Relative Luminosity l = 0.5 \n X = 0.74, Z = 0.01Z_{solar}, T_{Edd} = 1.703 keV, log g = 14.0" font "Vera,16"



#set styles
set palette rgbformulae 33,13,10 
set border linewidth 2
set tics scale 1.25
set pointsize 2.5
set style fill solid 0.4 noborder
set key top left


# inputs from the problem
# one output cycle
a=1	

# effective temperature
Teff = 1.703*.5**.25

# speed of light, cm/s
sol=3.e10	

# Planck constant, keV-s	
hkeV=4.136e-18	

# keV per erg	
keVpererg=6.24150974e8	

  

plot "datagray.out" i a u  1:3 t "Material (electron) temperature for 1 Cycle" with filledcurve y1=0 lc rgb "gray60", "datagray.out" i a u 1:4 t "Radiation temperature " w l lw 2 lt 8



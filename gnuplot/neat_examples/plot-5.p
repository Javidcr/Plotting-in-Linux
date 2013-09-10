##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
####  			Spectra in function of frequency 			     #### 
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
# gnuplot> load 'macro.p'


# set terminal, output
set term postscript eps  enhanced "Helvetica,12" color
set output "FE_vs_hnu_l05.eps"


# set labels
set log
set xlabel "h {/Symbol n} (keV)"  font "Bold" 
set ylabel "Flux (erg/cm^2-s-keV)"   font "Bold"
#set title "Atmosphere Spectra for Relative Luminosity l = 0.5 \n X = 0.74, Z = 0.01Z_{solar}, T_{Edd} = 1.703 keV, log g = 14.0" font "Vera,16"



#set styles
set palette rgbformulae 33,13,10 
set border linewidth 2
set tics scale 1.25
set pointsize 2.5


# inputs from the problem
# one output cycle
a=210	

# effective temperature
Teff = 1.703*.5**.25

# speed of light, cm/s
sol=3.e10	

# Planck constant, keV-s	
hkeV=4.136e-18	

# keV per erg	
keVpererg=6.24150974e8	

  

# plotting ("set13l05.dat" is SPW set 13, l=0.5)
plot [0.5:45][1e20:1e26] "datamg.out" i a u ($1*.001):($2*sol/hkeV) t "Surface flux (our model)" w l lt 5 lw 4, "set13l05.dat" u 1:2 t "Suleimanov et al (2011)" w l lw 3 lt 9, x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff))-1)*2*pi t "Blackbody at T_{eff} = 1.432 keV" lw 2 lt 0

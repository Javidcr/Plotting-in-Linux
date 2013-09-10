##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
####  			Spectra in function of frequency 			     #### 
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

# gnuplot> load 'macro.p'


# -----------------
# Initial settings
# -----------------

reset
set macro
TERM_EPS ="set term postscript landscape  enhanced color "
#TERM_PNG ="set terminal png"

set termoption dashed


# -------
#  Axes 
# -------

set logscale x
set logscale y
set border linewidth 2

set format y '%.1g'

set xrange [1:40] 
set yrange [1e21:0.15e25]

set tics scale 1.5
set xtics font ", 16"  
set ytics font ", 16" 



# ------------------
#  Colors & Styles
# ------------------


al0011 = "#1e20ff"	#  BLUE --> l = 0.03
al0012 = "#1e90ff"
al0013 = "#1efffe"
 
al011 = "#ff8d1e"	# RED --> l = 0.3
al012 = "#ff1e20"
al013 = "#ff1e91"



set style line 1 linecolor  rgbcolor al0011 linetype 2 linewidth 5	# l = 0.03
set style line 2 linecolor  rgbcolor al0011 linetype 1 linewidth 1 
set style line 3 linecolor  rgbcolor al0012 linetype 2 linewidth 5 
set style line 4 linecolor  rgbcolor al0012 linetype 1 linewidth 1
set style line 5 linecolor  rgbcolor al0013 linetype 2 linewidth 5  
set style line 6 linecolor  rgbcolor al0013 linetype 1 linewidth 1
  
set style line 7 linecolor  rgbcolor al011 linetype 2 linewidth 5	# l = 0.3
set style line 8 linecolor  rgbcolor al011 linetype 1 linewidth 1
set style line 9 linecolor  rgbcolor al012 linetype 2 linewidth 5
set style line 10 linecolor rgbcolor al012 linetype 1 linewidth 1 
set style line 11 linecolor rgbcolor al013 linetype 2 linewidth 5
set style line 12 linecolor rgbcolor al013 linetype 1 linewidth 1

STYLE = "w l"



# ------------------
#  Labels & Legends
# ------------------


set xlabel "h {/Symbol n} (keV)"  font "Bold" 
set ylabel "Flux (erg/cm^2-s-keV)"   font "Bold"

set label 1 "Our Model" at 15,0.1e25 font "Bold Verdana,14"
set arrow 1 from 12.5,0.1e25 to 14,0.1e25 nohead  linewidth 5 linetype 2 linecolor rgb "black"

set label 2 "Blackbody at the T_{eff}" at 15,0.07e25 font "Bold Verdana,14"
set arrow 2 from 12.5,0.07e25 to 14,0.07e25 nohead  linewidth 2 linetype 1 linecolor rgb "black"

set label 3 "H" at 1.2,0.08e25 font "Bold Verdana,28"

set key left bottom  spacing 1.75 font " Bold Verdana,14" 
set key width -4
set key box 

#unset key




# ------------------
#  Input Parameters
# ------------------

# one output cycle
a=100	

# effective temperature
TEdd_H_140 =    1.644
TEdd_H_143 =    1.954
TEdd_H_146 =    2.322

Teff10  = TEdd_H_140*.03**.25
Teff13  = TEdd_H_143*.03**.25
Teff16  = TEdd_H_146*.03**.25

Teff20  = TEdd_H_140*.3**.25
Teff23  = TEdd_H_143*.3**.25
Teff26  = TEdd_H_146*.3**.25



# speed of light, cm/s
sol=2.99792e10	

# Planck constant, keV-s	
hkeV=4.136e-18	

# keV per erg	
keVpererg=6.24150974e8	

DATA10 =  "../data/0/140/003/datamg.out"	# l = 0.03
DATA13 =  "../data/0/143/003/datamg.out"
DATA16 =  "../data/0/146/003/datamg.out"

DATA20 =  "../data/0/140/03/datamg.out"		# l = 0.3
DATA23 =  "../data/0/143/03/datamg.out"
DATA26 =  "../data/0/146/03/datamg.out"




# ----------
#  Plotting
# --------- 

@TERM_EPS
set output "plot2-H-3_gs-003-03-06.eps"


plot  \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff10))-1)*2*pi t "l = 0.03, g = 10^{14.0}" ls 2, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff13))-1)*2*pi t "l = 0.03, g = 10^{14.3}" ls 4, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff16))-1)*2*pi t "l = 0.03, g = 10^{14.6}" ls 6, \
DATA10  i a u ($1*.001):($2*sol/hkeV)  ls 1 t "" @STYLE,\
DATA13  i a u ($1*.001):($2*sol/hkeV)  ls 3 t "" @STYLE,\
DATA16  i a u ($1*.001):($2*sol/hkeV)  ls 5 t "" @STYLE,\
\
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff20))-1)*2*pi t "l = 0.3,   g = 10^{14.0}" ls 8, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff23))-1)*2*pi t "l = 0.3,   g = 10^{14.3}" ls 10, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff26))-1)*2*pi t "l = 0.3,   g = 10^{14.6}" ls 12, \
DATA20  i a u ($1*.001):($2*sol/hkeV)  ls 7 t "" @STYLE,\
DATA23  i a u ($1*.001):($2*sol/hkeV)  ls 9 t "" @STYLE,\
DATA26  i a u ($1*.001):($2*sol/hkeV)  ls 11 t "" @STYLE

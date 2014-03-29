##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
####  			Spectra in function of frequency 			     #### 
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

# gnuplot> load 'macro.p'


# -----------------
# Initial settings
# -----------------

reset
set macro
TERM_EPS ="set term postscript portrait  enhanced color "
TERM_PNG ="set terminal png"

set termoption dashed
#set grid
#set title "Spectra for Pure H - spectra.out - 03/28/14  "

# -------
#  Axes 
# -------

set logscale x
set logscale y
set border linewidth 2


set key samplen 2 spacing 1.2 font "Bold, 12" 
set key textcolor rgb "black" 

set format y '%.1g'

set xrange [0.2:4.5] 
set yrange [1e17:0.7e21]

set tics scale 1.5
set xtics font ", 14"  
set ytics font ", 14" 

set xlabel "h {/Symbol n} [keV]"  font "Bold,12" 
set ylabel "Flux [erg/cm^2-s-keV]"   font "Bold,12"


# ------------------
#  Colors & Styles
# ------------------


c_g = "#696969"	
c_r = "#FF6347"	
c_b = "#1E90FF"	
c_p = "#32CD32"		#"#8A2BE2"	
c_bb1 = "#696969"


set label "125 eV" at 0.7,2.8e20 font "Bold,12"  tc rgb c_p
set label "100 eV" at 0.6,1.15e20 font "Bold,12"  tc rgb c_b
set label "75 eV" at 0.5,4.5e19 font "Bold,12"  tc rgb c_r
#set label "60 eV" at 0.4,1.9e19 font "Bold,12"  tc rgb c_g




set style line 1 linecolor rgbcolor c_g linetype 2 linewidth 1 #140 	#0.06
set style line 2 linecolor rgbcolor c_r linetype 2 linewidth 1 		#0.075
set style line 3 linecolor rgbcolor c_b linetype 2 linewidth 1		#0.1
set style line 4 linecolor rgbcolor c_p linetype 2 linewidth 1		#0.125

set style line 5 linecolor rgbcolor c_g linetype 3 linewidth 1 #143 	#0.06
set style line 6 linecolor rgbcolor c_r linetype 3 linewidth 1 		#0.075
set style line 7 linecolor rgbcolor c_b linetype 3 linewidth 1		#0.1
set style line 8 linecolor rgbcolor c_p linetype 3 linewidth 1		#0.125

set style line 9  linecolor rgbcolor c_g linetype 4 linewidth 1 #146 	#0.06
set style line 10 linecolor rgbcolor c_r linetype 4 linewidth 1 	#0.075
set style line 11 linecolor rgbcolor c_b linetype 4 linewidth 1		#0.1
set style line 12 linecolor rgbcolor c_p linetype 4 linewidth 1		#0.125

set style line 13 linecolor rgbcolor c_g linetype 1 linewidth 1 #bb 	#0.06
set style line 14 linecolor rgbcolor c_r linetype 1 linewidth 1 	#0.075
set style line 15 linecolor rgbcolor c_b linetype 1 linewidth 1		#0.1
set style line 16 linecolor rgbcolor c_p linetype 1 linewidth 1		#0.125




# ------------------
#  Input Parameters
# ------------------


# effective temperature
Teff_0 = 0.06
Teff_1 = 0.075
Teff_2 = 0.1
Teff_3 = 0.125

# speed of light, cm/s
sol=2.99792e10	

# Planck constant, keV-s	
hkeV=4.136e-18	

# keV per erg	
keVpererg=6.24150974e8	

# data
LT1 =  "./data/140/spectraLT1.out"
LT2 =  "./data/140/spectraLT2.out"
LT3 =  "./data/140/spectraLT3.out"
LT10 =  "./data/jim/spectraLTj1.out"


LT4 =  "./data/143/spectraLT4.out"
LT5 =  "./data/143/spectraLT5.out"
LT6 =  "./data/143/spectraLT6.out"
LT11 =  "./data/jim/spectraLTj2.out"


LT7 =  "./data/146/spectraLT7.out"
LT8 =  "./data/146/spectraLT8.out"
LT9 =  "./data/146/spectraLT9.out"
LT12 =  "./data/jim/spectraLTj3.out"



# ----------
#  Plotting
# --------- 

@TERM_EPS
set output "spectra-LOW-T-He_03-28-14.eps"



plot  \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff_1))-1)*2*pi  t "Blackbody at the Teff"  ls 14 w l, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff_2))-1)*2*pi  t ""  ls 15 w l, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff_3))-1)*2*pi  t ""  ls 16 w l, \
LT10  u 1:2   t "g = 10^{14.0}" ls 1   w l ,\
LT1   u 1:2   t "g = 10^{14.0}" ls 2   w l ,\
LT2   u 1:2   t "" ls 3   w l ,\
LT3   u 1:2   t "" ls 4   w l ,\
LT11  u 1:2   t "g = 10^{14.3}" ls 5   w l ,\
LT4   u 1:2   t "g = 10^{14.3}" ls 6   w l ,\
LT5   u 1:2   t "" ls 7   w l ,\
LT6   u 1:2   t "" ls 8   w l ,\
LT12  u 1:2   t "g = 10^{14.6}" ls 9   w l ,\
LT7   u 1:2   t "g = 10^{14.6}" ls 10   w l ,\
LT8   u 1:2   t "" ls 11   w l ,\
LT9   u 1:2   t "" ls 12   w l



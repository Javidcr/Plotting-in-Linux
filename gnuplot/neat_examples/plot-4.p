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

set xrange [1:55] 
set yrange [1e20:0.6e25]

set tics scale 1.5
set xtics font ", 16"  
set ytics font ", 16" 



# ------------------
#  Colors & Styles
# ------------------

a_b = "#0000ff"	# BLUE
a_r = "#ea1a36"	# RED
a_p = "#5900b3"	# PURPLE
a_g = "#009101"	# GREEN
a_o = "#ff0080"	# pink
a_c = "#00ffff"	# CYAN
a_k = "#000000" # BLACK


set style line 1 linecolor rgbcolor a_c linetype 2 linewidth 2   
set style line 2 linecolor rgbcolor a_g linetype 5 linewidth 2 
set style line 3 linecolor rgbcolor a_p linetype 4 linewidth 2 
set style line 4 linecolor rgbcolor a_b linetype 3 linewidth 2
set style line 5 linecolor rgbcolor a_o linetype 6 linewidth 2  
set style line 6 linecolor rgbcolor a_r linetype 7 linewidth 2  
set style line 7 linecolor rgbcolor a_k linetype 1 linewidth 2


STYLE = "w l"


# ------------------
#  Labels & Legends
# ------------------


set xlabel "h {/Symbol n} (keV)"  font "Bold" 
set ylabel "Flux (erg/cm^2-s-keV)"   font "Bold"


set label 4 "g = 10^{14.0}" at 1.25,0.25e25 font "Bold Verdana,28"

set key  left bottom spacing 1.25 font "Bold Verdana,12" 
#unset key



# ------------------
#  Input Parameters
# ------------------

# one output cycle
a=100	



# effective temperature
TEdd_H_140 =    1.644
TEdd_1Z_140 =   1.703
TEdd_03Z_140 =  1.703
TEdd_01Z_140 =  1.703
TEdd_001Z_140 = 1.703
TEdd_He_140 =   1.955


Teff1  = TEdd_1Z_140*.03**.25
Teff2  = TEdd_1Z_140*.15**.25
Teff3  = TEdd_1Z_140*.5**.25
Teff4  = TEdd_1Z_140*.8**.25


# speed of light, cm/s
sol=2.99792e10	

# Planck constant, keV-s	
hkeV=4.136e-18	

# keV per erg	
keVpererg=6.24150974e8	

#set nokey 

DATA01 =  "../data/0/140/003/datamg.out"
DATA02 =  "../data/0/140/015/datamg.out"
DATA03 =  "../data/0/140/05/datamg.out"
DATA04 =  "../data/0/140/08/datamg.out"

DATA11 =  "../data/1/140/003/datamg.out"
DATA12 =  "../data/1/140/015/datamg.out"
DATA13 =  "../data/1/140/05/datamg.out"
DATA14 =  "../data/1/140/08/datamg.out"

DATA21 =  "../data/2/140/003/datamg.out"
DATA22 =  "../data/2/140/015/datamg.out"
DATA23 =  "../data/2/140/05/datamg.out"
DATA24 =  "../data/2/140/08/datamg.out"

DATA31 =  "../data/3/140/003/datamg.out"
DATA32 =  "../data/3/140/015/datamg.out"
DATA33 =  "../data/3/140/05/datamg.out"
DATA34 =  "../data/3/140/08/datamg.out"

DATA41 =  "../data/4/140/003/datamg.out"
DATA42 =  "../data/4/140/015/datamg.out"
DATA43 =  "../data/4/140/05/datamg.out"
DATA44 =  "../data/4/140/08/datamg.out"

DATA51 =  "../data/5/140/003/datamg.out"
DATA52 =  "../data/5/140/015/datamg.out"
DATA53 =  "../data/5/140/05/datamg.out"
DATA54 =  "../data/5/140/08/datamg.out"





# ----------
#  Plotting
# --------- 

@TERM_EPS
set output "plot4-all-comp_g140-mid_luminosities.eps"


plot  \
DATA01  i a u ($1*.001):($2*sol/hkeV)  ls 1 t "Pure H" @STYLE,\
DATA11  i a u ($1*.001):($2*sol/hkeV)  ls 2 t "Pure He" @STYLE,\
DATA21  i a u ($1*.001):($2*sol/hkeV)  ls 3 t "0.01 Z_s" @STYLE,\
DATA31  i a u ($1*.001):($2*sol/hkeV)  ls 4 t "0.1 Z_s" @STYLE,\
DATA41  i a u ($1*.001):($2*sol/hkeV)  ls 5 t "0.3 Z_s" @STYLE,\
DATA51  i a u ($1*.001):($2*sol/hkeV)  ls 6 t "Z_s" @STYLE,\
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff1))-1)*2*pi t "BB" ls 7, \
\
DATA02  i a u ($1*.001):($2*sol/hkeV)  ls 1 t "" @STYLE,\
DATA12  i a u ($1*.001):($2*sol/hkeV)  ls 2 t "" @STYLE,\
DATA22  i a u ($1*.001):($2*sol/hkeV)  ls 3 t "" @STYLE,\
DATA32  i a u ($1*.001):($2*sol/hkeV)  ls 4 t "" @STYLE,\
DATA42  i a u ($1*.001):($2*sol/hkeV)  ls 5 t "" @STYLE,\
DATA52  i a u ($1*.001):($2*sol/hkeV)  ls 6 t "" @STYLE,\
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff2))-1)*2*pi t "" ls 7,\
\
DATA04  i a u ($1*.001):($2*sol/hkeV)  ls 1 t "" @STYLE,\
DATA14  i a u ($1*.001):($2*sol/hkeV)  ls 2 t "" @STYLE,\
DATA24  i a u ($1*.001):($2*sol/hkeV)  ls 3 t "" @STYLE,\
DATA34  i a u ($1*.001):($2*sol/hkeV)  ls 4 t "" @STYLE,\
DATA44  i a u ($1*.001):($2*sol/hkeV)  ls 5 t "" @STYLE,\
DATA54  i a u ($1*.001):($2*sol/hkeV)  ls 6 t "" @STYLE,\
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff4))-1)*2*pi t "" ls 7




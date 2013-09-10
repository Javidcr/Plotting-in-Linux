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

set xrange [1:45] 
set yrange [1e20:0.5e25]

set tics scale 1.5
set xtics font ", 16"  
set ytics font ", 16" 



# ------------------
#  Colors & Styles
# ------------------


a_10 = "#6bb6ff"	# BLUES 
a_11 = "#1E90FF"
a_12 = "#004385"

a_20 = "#ff2b2b"	# REDS
a_21 = "#FF7F50"
a_22 = "#cd0000"

a_30 = "#b86fdc"	# PURPLES
a_31 = "#9932CC"
a_32 = "#3d1452"

a_40 = "#a5ff4d"	# GREENS
a_41 = "#7FFF00"
a_42 = "#336700"

a_50 = "#ffc04d"	# ORANGES
a_51 = "#FFA500"
a_52 = "#674200"



set style line 1 linecolor rgbcolor a_12 linetype 2 linewidth 3    
set style line 2 linecolor rgbcolor a_10 linetype 1 linewidth 3 
set style line 3 linecolor rgbcolor a_11 linetype 3 linewidth 5 
  
set style line 4 linecolor rgbcolor a_22 linetype 2 linewidth 3
set style line 5 linecolor rgbcolor a_20 linetype 1 linewidth 3  
set style line 6 linecolor rgbcolor a_21 linetype 3 linewidth 5
  
set style line 7 linecolor rgbcolor a_32 linetype 2 linewidth 3 
set style line 8 linecolor rgbcolor a_30 linetype 1 linewidth 3
set style line 9 linecolor rgbcolor a_31 linetype 3 linewidth 5

set style line 10 linecolor rgbcolor a_42 linetype 2 linewidth 3 
set style line 11 linecolor rgbcolor a_40 linetype 1 linewidth 3
set style line 12 linecolor rgbcolor a_41 linetype 3 linewidth 5
    
set style line 13 linecolor rgbcolor a_52 linetype 2 linewidth 3
set style line 14 linecolor rgbcolor a_50 linetype 1 linewidth 3
set style line 15 linecolor rgbcolor a_51 linetype 3 linewidth 5   
 

STYLE = "w l"


# ------------------
#  Labels & Legends
# ------------------


set xlabel "h {/Symbol n} (keV)"  font "Bold" 
set ylabel "Flux (erg/cm^2-s-keV)"   font "Bold"

set label 1 "Our Model" at 9,0.3e25 font "Bold Verdana,12"
set arrow 1 from 6,0.3e25 to 8,0.3e25 nohead  linewidth 3 linetype 2 linecolor rgb "black"

set label 2 "Suleimanov et al. (2011)" at 9,0.2e25 font "Bold Verdana,12"
set arrow 2 from 6,0.2e25 to 8,0.2e25 nohead  linewidth 5 linetype 3 linecolor rgb "black"

set label 3 "Blackbody at the T_{eff}" at 9,0.13e25 font "Bold Verdana,12"
set arrow 3 from 6,0.13e25 to 8,0.13e25 nohead linetype -1 linewidth 2 

set key  samplen 4 spacing 1.25 font "Bold Verdana,12" 
#unset key



# ------------------
#  Input Parameters
# ------------------

# one output cycle
a=100	



# effective temperature
TEdd_H_140 =    1.644
#TEdd_H_143 =    1.954
#TEdd_H_146 =    2.322
#TEdd_1Z_140 =   1.703
#TEdd_1Z_143 =   2.024
#TEdd_1Z_146 =   2.405
#TEdd_03Z_140 =  1.703
#TEdd_03Z_143 =  2.024
#TEdd_03Z_146 =  2.405
#TEdd_01Z_140 =  1.703
#TEdd_01Z_143 =  2.024
#TEdd_01Z_146 =  2.405
#TEdd_001Z_140 = 1.703
#TEdd_001Z_143 = 2.024
#TEdd_001Z_146 = 2.405
#TEdd_He_140 =   1.955
#TEdd_He_143 =   2.323
#TEdd_He_146 =   2.761


#Teff1  = TEdd_H_140*.001**.25
#Teff2  = TEdd_H_140*.003**.25
Teff3  = TEdd_H_140*.01**.25
#Teff4  = TEdd_H_140*.03**.25
Teff5  = TEdd_H_140*.05**.25
#Teff6  = TEdd_H_140*.07**.25
#Teff7  = TEdd_H_140*.1**.25
#Teff8  = TEdd_H_140*.15**.25
Teff9  = TEdd_H_140*.2**.25
#Teff10 = TEdd_H_140*.3**.25
#Teff11 = TEdd_H_140*.4**.25
#Teff12 = TEdd_H_140*.5**.25
Teff13 = TEdd_H_140*.6**.25
#Teff14 = TEdd_H_140*.7**.25
#Teff15 = TEdd_H_140*.75**.25
#Teff16 = TEdd_H_140*.8**.25
#Teff17 = TEdd_H_140*.85**.25
#Teff18 = TEdd_H_140*.9**.25
#Teff19 = TEdd_H_140*.95**.25
#Teff20 = TEdd_H_140*.9**.25




# speed of light, cm/s
sol=2.99792e10	

# Planck constant, keV-s	
hkeV=4.136e-18	

# keV per erg	
keVpererg=6.24150974e8	

#set nokey 

#DATA1 =  "../../../data/0/140/0001/datamg.out"
#DATA2 =  "../../../data/0/140/0003/datamg.out"
DATA3 =  "../../../data/0/140/001/datamg.out"
#DATA4 =  "../../../data/0/140/003/datamg.out"
DATA5 =  "../../../data/0/140/005/datamg.out"
#DATA6 =  "../../../data/0/140/007/datamg.out"
#DATA7 =  "../../../data/0/140/01/datamg.out"
#DATA8 =  "../../../data/0/140/015/datamg.out"
DATA9 =  "../../../data/0/140/02/datamg.out"
#DATA10 = "../../../data/0/140/03/datamg.out"
#DATA11 = "../../../data/0/140/04/datamg.out"
#DATA12 = "../../../data/0/140/05/datamg.out"
DATA13 = "../../../data/0/140/06/datamg.out"
#DATA14 = "../../../data/0/140/07/datamg.out"
#DATA15 = "../../../data/0/140/075/datamg.out"
#DATA16 = "../../../data/0/140/08/datamg.out"
#DATA17 = "../../../data/0/140/085/datamg.out"
#DATA18 = "../../../data/0/140/09/datamg.out"
#DATA19 = "../../../data/0/140/095/datamg.out"
#DATA20 = "../../../data/0/140/098/datamg.out"




#SPW1=   "../../../spw/entire_range/0001/set1l0001.dat"
#SPW2 =  "../../../spw/entire_range/0003/set1l0003.dat"
SPW3 =  "../../../spw/entire_range/001/set1l001.dat"
#SPW4 =  "../../../spw/entire_range/003/set1l003.dat"
SPW5 =  "../../../spw/entire_range/005/set1l005.dat"
#SPW6 =  "../../../spw/entire_range/007/set1l007.dat"
#SPW7 =  "../../../spw/entire_range/01/set1l01.dat"
#SPW8 =  "../../../spw/entire_range/015/set1l015.dat"
SPW9 =  "../../../spw/entire_range/02/set1l02.dat"
#SPW10 = "../../../spw/entire_range/03/set1l03.dat"
#SPW11 = "../../../spw/entire_range/04/set1l04.dat"
#SPW12 = "../../../spw/entire_range/05/set1l05.dat"
SPW13 = "../../../spw/entire_range/06/set1l06.dat"
#SPW14 = "../../../spw/entire_range/07/set1l07.dat"
#SPW15 = "../../../spw/entire_range/075/set1l075.dat"
#SPW16 = "../../../spw/entire_range/08/set1l08.dat"
#SPW17 = "../../../spw/entire_range/085/set1l085.dat"
#SPW18 = "../../../spw/entire_range/09/set1l09.dat"
#SPW19 = "../../../spw/entire_range/095/set1l095.dat"
#SPW20 = "../../../spw/entire_range/098/set1l098.dat"





# ----------
#  Plotting
# --------- 

@TERM_EPS
set output "plot1-H_g140-mid_luminosities.eps"


plot  \
DATA3  i a u ($1*.001):($2*sol/hkeV)  ls 1 t "" @STYLE,\
SPW3   u 1:2  t ""  ls 3 @STYLE, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff3))-1)*2*pi t "l = 0.01" ls 2, \
\
DATA5 i a u ($1*.001):($2*sol/hkeV)   t "" @STYLE  ls 4,    \
SPW5   u 1:2  @STYLE  t "" ls 6, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff5))-1)*2*pi t "  l = 0.05"  ls 5, \
\
DATA9 i a u ($1*.001):($2*sol/hkeV)   t "" @STYLE  ls 7, \
SPW9   u 1:2   @STYLE   t "" ls 9, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff9))-1)*2*pi t "  l = 0.2  " ls 8, \
\
DATA13 i a u ($1*.001):($2*sol/hkeV)   t "" @STYLE  ls 10, \
SPW13   u 1:2   t "" @STYLE  ls 12, \
x**3/(sol*hkeV)**2/hkeV/keVpererg/(exp(x/(Teff13))-1)*2*pi t "  l = 0.6  " ls 11



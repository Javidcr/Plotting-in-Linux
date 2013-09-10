##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 
#### Group opacity as a function of frequency, website and standard TOPS comparison  #### 
##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### ##### 

# gnuplot> load 'macro.p'


# -----------------
# Initial settings
# -----------------

reset
set macro
TERM_EPS ="set term postscript landscape enhanced color solid"
TERM_PNG ="set terminal png"




# ---------
#  Legends
# ---------
set key samplen 4 spacing 1.75 font "Bold Verdana,18" 



# -------
#  Axes 
# -------

set logscale x
set logscale y
set border linewidth 2

set format x '%.1g'

set xrange [:]  
set yrange [0.16:3.5] 

set tics scale 1.25
set xtics font ", 16"  
set ytics font ", 16" 



# ------------------
#  Colors & Styles
# ------------------

p_000 = "#D53E4F"
p_025 = "#F46D43"
p_050 = "#FDAE61"
p_075 = "#FEE08B"
p_100 = "#E6F598"
p_125 = "#ABDDA4"
p_150 = "#66C2A5"
p_175 = "#3288BD" 


set style line 1  linecolor rgbcolor p_000  linewidth 6
set style line 2  linecolor rgbcolor p_025  linewidth 6
set style line 3  linecolor rgbcolor p_050  linewidth 6
set style line 4  linecolor rgbcolor p_075  linewidth 6
set style line 5  linecolor rgbcolor p_125  linewidth 6 
set style line 6  linecolor rgbcolor p_175  linewidth 6

STYLE = "w l"


# --------
#  Labels
# --------

set label 1 "   bound-free \ndominant region" at 1200, 2.4 font ",16"
set label 2 "electron scattering \n  dominant region" at 50000, 0.32  font ",16"
set label 3 " free-free \ndominant \nregion, {/Symbol \265  n}^{-3}"  at 100,1.25 font ",16"
set arrow 1 from 85,1.2 to 27,1 linetype -1 linewidth 1.5 

set xlabel "h {/Symbol n} (keV)" font "Bold Verdana,22"
set ylabel "{/Symbol k} (cm^2/g)" font "Bold Verdana,22"



# ------------------
#  Input Parameters
# ------------------

d=1000	
ng=299


DATA1 = "op001Sf299web.opac"
DATA2 = "op01Sf299web.opac"
DATA3 = "op03Sf299web.opac" 
DATA4 = "op1Sf299web.opac" 
DATA5 = "op074SX1f299web.opac" 
DATA6 = "opY1f299web.opac"  



# ----------
#  Plotting
# --------- 

@TERM_EPS
set output "Rosseland-Averaged-Group-Total-Opacity.eps"
plot    \
DATA1  u ($1*1e3):2 ev ::d+1::d+ng t "Z = 0.01 Z_{solar}" ls 1 w l ,\
DATA2  u ($1*1e3):2 ev ::d+1::d+ng t "Z = 0.1 Z_{solar} " ls 2 w l, \
DATA3  u ($1*1e3):2 ev ::d+1::d+ng t "Z = 0.3 Z_{solar}"  ls 3 w l, \
DATA4  u ($1*1e3):2 ev ::d+1::d+ng t "Z = Z_{solar}"      ls 4 w l, \
DATA5  u ($1*1e3):2 ev ::d+1::d+ng t "Pure H"             ls 5 w l, \
DATA6  u ($1*1e3):2 ev ::d+1::d+ng t "Pure He"            ls 6 w l   


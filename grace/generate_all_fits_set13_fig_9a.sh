#!/bin/sh

#plot 9a

src/./gracey.py data/singles/spw/single_spw_set13_fc_*.txt  sc=[gr,re,bu,ye,br]    lw=1.0 t="\2 Dependence of the Color Correction Factor to the Relative Luminosity"  st="\2 Model 13: X=0.74, Z=0.01, log g = 14.0" ts=1.0  xl="\4  Relative Luminosity (L/L\sEdd\N)" yl="\4 Color Correction Factor (f\sc\N)" xls=1.0 yls=1.0  leg=['\4Fit-1','\4Fit-2','\4Fit-3','\4Fit-4','\4Fit-5'] PNG 



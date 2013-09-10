#!/bin/sh

#plot 5b
src/./gracey.py data/singles/lanl/single_lanl_set4_fc_1.txt data/singles/lanl/single_lanl_set7_fc_1.txt data/singles/lanl/single_lanl_set10_fc_1.txt data/singles/lanl/single_lanl_set13_fc_1.txt  sc=[gr,re,bu,ye]  lw=3.0 t="Dependence of the Color Correction Factor to the Relative Luminosity for the LANL" ts=1.0 xl="Relative Luminosity - L/L\sEdd" yl="Color Correction Factor - f\sc "  st="Fit 1, Sets 4, 7, 10, and 13, fc=1, LANL data" xls=1.0 yls=1.0 leg=['set4','set7','set10','set13']  sc=re PNG 

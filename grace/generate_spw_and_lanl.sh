 #!/bin/sh

#plot data vs fitting fc1

src/./gracey.py data/singles/spw/single_spw_set4_fc_1.txt data/singles/spw/single_spw_set7_fc_1.txt  data/singles/spw/single_spw_set10_fc_1.txt data/singles/spw/single_spw_set13_fc_1.txt data/singles/lanl/single_lanl_set4_fc_1.txt data/singles/lanl/single_lanl_set7_fc_1.txt data/singles/lanl/single_lanl_set10_fc_1.txt data/singles/lanl/single_lanl_set13_fc_1.txt    lw=0.7 t="\2 Comparison of Blackbody Fitting for Similar Models"  st="\2 from Ref.[4] (SPW10) and Ref[5] (LANL12)" ts=1.0 xl="\4  Relative Luminosity (L/L\sEdd\N)" yl="\4  Color Correction Factor (f\sc\N)"  xls=1.0 yls=1.0  sc=re PNG  leg=['\-SPW10-Model-4','\-SPW10-Model-7','\-SPW10Model-10','\-SPW10-Model-13','\-LANL12-Model-4','\-LANL12-Model-7','\-LANL12-Model-10','\-LANL12-Model-13']



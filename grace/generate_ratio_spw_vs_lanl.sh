 #!/bin/sh

#plot data vs fitting fc1

src/./gracey.py  data/singles/ratio/set4_ratio.txt data/singles/ratio/set7_ratio.txt  data/singles/ratio/set10_ratio.txt  data/singles/ratio/set13_ratio.txt ymax=1.2 ymin=0.6   lw=1.0 t="\2 Ratio of the two Models"   yl="\2  Color Correction Factor Ratio (f\sc-SPW\N/f\sc-LANL\N)"  xls=1.0 yls=1.0   PNG  leg=['\-Model-4','\-Model-7','\-Model-10','\-Model-13'] 



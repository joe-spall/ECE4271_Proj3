___________________________________________________________________________________________________________________________________
Authors  : 	Dogancan Temel, Ghassan AlRegib  	
Version :	1.0

The author is with Multimedia and Sensors Lab (MSL), Center for Signal and Information Processing, Georgia Institute of Technology, 
Atlanta, GA. Kindly report any suggestions or corrections to dcantemel@gmail.com.
___________________________________________________________________________________________________________________________________
_____________________________________________________COPYRIGHT NOTICE______________________________________________________________ 
Copyright (c) 2016 Georgia Institute of Technology, Multimedia and Sesnors Lab.
All rights reserved.
___________________________________________________________________________________________________________________________________
Please, cite the following paper in your publication if you use this script.
___________________________________________________________________________________________________________________________________
Plain text:
1) D. Temel and G. AlRegib,"CSV: Image Quality Assessment Based on Color, Structure and Visual System,"
in transactions of Signal Processing: Image Communication, 2016 submitted Feb 10

BibTeX:
@INPROCEEDINGS{Temel2016, 
author={Temel, D. and AlRegib, G.}, 
booktitle={Signal Processing: Image Communication}, 
title={{CSV: Image Quality Assessment Based on Color, Structure and Visual System}}, 
year={2016},}
_______________________________________________________________________________________________________________________________
_____________________________________________________FILES_____________________________________________________________________
MAIN
msl_csv.m: CSV function. Input: Compared images, Output: Estimated quality score

ADDITIONAL
deltaE2000.m: CIEDE2000 function. Explanation is inside the m file.
RGB_to_color_terms.m:  Color name extraction script. Explanation is inside the m file.
w2c.mat: Colro name data. Required for color name extraction. 
FastEMD folder: Required files for EMD. Run compile_FastEMD.m to compile mex files necessary for EMD calculation.


******************TODO***********************
Add the the FastEMD folder in the matlab path
**********************************************
______________________________________________________________________________________________________________________________

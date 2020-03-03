close all
blurryImage = imread("../../data_students/blurryImage.png");
figure
imshow(blurryImage);
estimated_nsr = 0;
LEN = 3;
THETA = -60;
PSF = fspecial('motion', LEN, THETA);
wnr2 = deconvwnr(blurryImage, PSF, estimated_nsr);
figure
imshow(wnr2);
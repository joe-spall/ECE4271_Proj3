close all
clear
clc

image = imread("data_students/brussels3/brussels3_04_2.jpg");
orig_image = imread("data_students/brussels3/brussels3_01_0.jpg");

threshold = 250;
difference = 255 - threshold;
final_image = image;


final_image(final_image>threshold) = final_image(final_image>threshold) - 40;
%final_image = histeq(final_image);
%final_image = imgaussfilt(final_image,3);
%final_image = imsharpen(final_image,'Radius',1,'Amount',2);
%final_image(final_image>threshold) = final_image(final_image>threshold) + 40;
final_image = final_image+40;
% figure
% subplot(1,2,1)
% imhist(image,64)
% subplot(1,2,2)
% imhist(final_image,64)


mse_out_orig = mse(image,orig_image);
psnr_out_orig = psnr(image,orig_image);
ssim_out_orig = ssim(image,orig_image);
unique_out_orig = mslUNIQUE(image,orig_image);

mse_out_filt = mse(final_image,orig_image);
psnr_out_filt = psnr(final_image,orig_image);
ssim_out_filt = ssim(final_image,orig_image);
unique_out_filt = mslUNIQUE(final_image,orig_image);

% subplot(1,4,1)
% imshow(orig_image)
% subplot(1,4,2)
% imshow(image)

figure
subplot(1,2,1)
imshow(image)
subplot(1,2,2)
imshow(final_image)


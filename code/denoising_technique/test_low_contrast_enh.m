close all
clear
clc


image = imread("data_students/brussels3/brussels3_03_5.jpg");
orig_image = imread("data_students/brussels3/brussels3_01_0.jpg");
%window_size = [15 15];
final_image = histeq(image);
final_image = imgaussfilt(final_image,1);

mse_out = mse(final_image,orig_image);
%csv_out = msl_csv(sharpened_filtered,orig_image);
psnr_out = psnr(final_image,orig_image);
ssim_out = ssim(final_image,orig_image);
unique_out = mslUNIQUE(final_image,orig_image);

% subplot(1,4,1)
% imshow(orig_image)
% subplot(1,4,2)
% imshow(image)
subplot(1,2,1)
imshow(image)
subplot(1,2,2)
imshow(final_image)


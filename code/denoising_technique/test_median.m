close all
clear
clc

image = rgb2ycbcr(imread("data_students/brussels3/brussels3_07_3.jpg"));
orig_image = imread("data_students/brussels3/brussels3_01_0.jpg");
window_size = [15 15];
filtered_image_R = median_filter(image(:,:,1),window_size);
filtered_image_G = median_filter(image(:,:,2),window_size);
filtered_image_B = median_filter(image(:,:,3),window_size);
filtered_image = cat(3, filtered_image_R,filtered_image_G,filtered_image_B);
sharpened_filtered = imsharpen(filtered_image,'Radius',2,'Amount',1);
final_image = ycbcr2rgb(sharpened_filtered);
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
imshow(ycbcr2rgb(image))
subplot(1,2,2)
imshow(final_image)

function test_median_out = test_median(input_image)
image = rgb2ycbcr(input_image);
%orig_image = imread("data_students/wiseonRocks_square/wiseonRocks_square_01_0.jpg");
window_size = [10 10];
filtered_image_Y = median_filter(image(:,:,1),window_size);
filtered_image_Cb = median_filter(image(:,:,2),window_size);
filtered_image_Cr = median_filter(image(:,:,3),window_size);
filtered_image = cat(3, filtered_image_Y,filtered_image_Cb,filtered_image_Cr);
filtered_image = ycbcr2rgb(filtered_image);
test_median_out = imsharpen(filtered_image,'Radius',2,'Amount',1,'Threshold',0.5);
% mse_out = mse(final_image,orig_image);
% psnr_out = psnr(final_image,orig_image);
% ssim_out = ssim(final_image,orig_image);
% unique_out = mslUNIQUE(final_image,orig_image);
% montage({input_image, final_image,input_image(200:400,200:400,:),final_image(200:400,200:400,:)})

end

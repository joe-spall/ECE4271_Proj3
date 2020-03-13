image_sets = ["brussels3","espresso_square","wiseonRocks_square"];
image_class_names = [["02","Resize"];...
                     ["03","Underexposure"];...
                     ["04","Overexposure"];...
                     ["05","Gaussian blur"];...
                     ["06","Dirty Lens"];...
                     ["07","Salt & Pepper"]];
%%% Change per noise type                 
image_class = image_class_names(3,:);
%%%
image_difficulties = ["1","2","3","4","5"];
mse_total = zeros(size(image_difficulties,2),size(image_sets,2));
psnr_total = zeros(size(image_difficulties,2),size(image_sets,2));
ssim_total = zeros(size(image_difficulties,2),size(image_sets,2));
unique_total = zeros(size(image_difficulties,2),size(image_sets,2));

for j = 1:size(image_sets,2)
    orig_image = imread(strcat("data_students/",image_sets(j),"/",image_sets(j),"_01_0.jpg"));
    for i = 1:size(image_difficulties,2)
        input_image = imread(strcat("data_students/",image_sets(j),"/",image_sets(j),...
            "_",image_class(1),"_",image_difficulties(i),".jpg"));
        
        %%% Change per filter
        final_image = test_high_contrast_enh(input_image);
        %%%
        mse_total(i,j) = mse(final_image,orig_image);
        psnr_total(i,j) = psnr(final_image,orig_image);
        ssim_total(i,j) = ssim(final_image,orig_image);
        unique_total(i,j) = mslUNIQUE(final_image,orig_image);
    end
end

mse_total = mse_total.';
psnr_total = psnr_total.';
ssim_total = ssim_total.';
unique_total = unique_total.';
figure
boxplot(mse_total,image_difficulties)
title(strcat("MSE Across Image Difficulties for ",image_class(2)))
ylabel("MSE")
xlabel("Difficulty")

figure
boxplot(psnr_total,image_difficulties)
title(strcat("PSNR Across Image Difficulties for ",image_class(2)))
ylabel("PSNR")
xlabel("Difficulty")

figure
boxplot(ssim_total,image_difficulties)
title(strcat("SSIM Across Image Difficulties for ",image_class(2)))
ylabel("SSIM")
xlabel("Difficulty")

figure
boxplot(unique_total,image_difficulties)
title(strcat("UNIQUE Across Image Difficulties for ",image_class(2)))
ylabel("UNIQUE")
xlabel("Difficulty")


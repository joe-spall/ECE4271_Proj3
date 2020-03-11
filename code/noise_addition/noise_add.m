clear
close all
%image_class = "bottle";
image_class = "vents";
image_read = imread(strcat("data_students/",image_class,"/",image_class,"_01_0.jpg"));
ranges = [0.2,0.65];
noise_type = "06";
image_difficulties = ["1","2","3","4","5"];
factors = linspace(ranges(1),ranges(2), size(image_difficulties,2));
for x = 1:size(factors,2)
    file_name = strcat(image_class,"_",noise_type,"_",image_difficulties(x),".jpg");
    out_image = dirty_lens(image_read,factors(x));
    imwrite(out_image,file_name)
end

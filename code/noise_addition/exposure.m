function exposure_output = exposure(image,factor)
    exposure_output = min(max(image*factor,0),255);
    %median_value = median(image,'all');
    %exposure_output = min(max(image*factor,0),255);
end

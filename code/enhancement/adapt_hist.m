function adapt_hist_output = adapt_hist(image, limit, num_tiles)

LAB = rgb2lab(image);
L = LAB(:,:,1)/100;
L = adapthisteq(L,'NumTiles',num_tiles,'ClipLimit',limit);
LAB(:,:,1) = L*100;
adapt_hist_output = lab2rgb(LAB);

end

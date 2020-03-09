function output = resize_filt(input, scale)
unsharpened = imresize(input, scale, 'bicubic');
output = imsharpen(unsharpened, 'Radius', 2, 'Amount', 1);
end
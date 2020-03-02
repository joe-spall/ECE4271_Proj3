function resize_output = resize(image,scale)
    resize_output = imresize(image,scale,'bicubic');
end
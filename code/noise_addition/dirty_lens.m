function dirty_lens_output = dirty_lens(image,weights)
    [image_size_x,image_size_y,~] = size(image);
    dirt = imread('dirt_texture.jpg');
    dirt_resize = imresize(dirt,[image_size_x, image_size_y],'bicubic');
    dirty_lens_output = imfuse(image, dirt_resize*weights);
end
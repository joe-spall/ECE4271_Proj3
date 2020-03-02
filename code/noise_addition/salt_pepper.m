function salt_pepper_output = salt_pepper(image,density)
    salt_pepper_output = imnoise(image,'salt & pepper',density);
end
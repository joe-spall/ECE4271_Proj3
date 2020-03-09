function output = gaussian_deblur(input, sigma, iterations)
[output1, ~] = deconvblind(input, fspecial('gaussian', 2*ceil(2*sigma)+1, sigma), iterations);
output = imsharpen(output1, 'Radius', 2, 'Amount', 7);

% optimal parameters
% lvl1 - 7, 7

end
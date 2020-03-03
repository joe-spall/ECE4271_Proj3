function output = dct2_truncate_idct(input, threshold)
dct_r = dct2(input(:, :, 1));
dct_g = dct2(input(:, :, 2));
dct_b = dct2(input(:, :, 3));

dct_r(abs(dct_r)<threshold) = 0;
dct_g(abs(dct_g)<threshold) = 0;
dct_b(abs(dct_b)<threshold) = 0;

idct_r = uint8(idct2(dct_r));
idct_g = uint8(idct2(dct_g));
idct_b = uint8(idct2(dct_b));

output = cat(3, idct_r, idct_g, idct_b);
end
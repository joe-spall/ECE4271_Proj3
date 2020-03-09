function output = nlm(input)
lab_converted = rgb2lab(input);
roi = [210, 24, 52, 41];
patch = imcrop(lab_converted, roi);
patchSq = patch.^2;
edist = sqrt(sum(patchSq,3));
patchSigma = sqrt(var(edist(:)));
DoS = 1.5*patchSigma;
denoisedLAB = imnlmfilt(lab_converted,'DegreeOfSmoothing',DoS);
output = lab2rgb(denoisedLAB, 'Out', 'uint8');
end
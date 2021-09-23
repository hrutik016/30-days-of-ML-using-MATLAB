%wavelet band

clc;
clear all;
close all;

img = imread('cameraman.tif');

[LL1 LH1 HL1 HH1] = dwt2(img, 'haar');
[LL2 LH2 HL2 HH2] = dwt2(LL1, 'haar');
[LL3 LH3 HL3 HH3] = dwt2(LL2, 'haar');
[LL4 LH4 HL4 HH4] = dwt2(LL3, 'haar');
[LL5 LH5 HL5 HH5] = dwt2(LL4, 'haar');
[LL6 LH6 HL6 HH6] = dwt2(LL5, 'haar');
[LL7 LH7 HL7 HH7] = dwt2(LL6, 'haar');

Dec3 = [LL3 LH3; HL3 HH3];
Dec2 = [Dec3 LH2; HL2 HH2];
Dec1 = [Dec2 LH1; HL1 HH1];

figure; 
subplot(1,3,1); imshow(img);
subplot(1,3,2); imshow(Dec1,[]);

%to reconstruct image back

Rec = idwt2(LL1, LH1, HL1, HH1, 'haar');  
subplot(1,3,3); imshow(Rec,[]);



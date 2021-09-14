clc;
clear all;
close all;

img = imread('cameraman.tif');

%adding noise to the image
new_img = imnoise(img, 'salt & pepper', 0.05);

subplot(1,3,1); imshow(img);
subplot(1,3,2); imshow(new_img);

%filter to clear the noise we added
new_img2 = medfilt2(new_img, [5 5]);
subplot(1,3,3); imshow(new_img2);


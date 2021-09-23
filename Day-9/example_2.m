%dct-discrete cosine theorem

clc;
clear all;
close all;

img = imread('cameraman.tif');
B = dct2(img);
C = idct(B);

figure;
subplot(1,3,1); imshow(img);
subplot(1,3,2); imshow(B);
subplot(1,3,3); imshow(C);


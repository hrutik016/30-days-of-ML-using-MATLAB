clc;
clear all;
close all;

img_1 = imread('cameraman.tif');
img_2 = imread('rice.png');

add_img = imadd(img_1, img_2);

subplot(1,3,1); imshow(img_1);
subplot(1,3,2); imshow(img_2);
subplot(1,3,3); imshow(add_img);
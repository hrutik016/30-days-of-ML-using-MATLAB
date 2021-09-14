clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\4.jpg');

%subplot to divide the output into sub parts
subplot(1,2,1);imshow(img)

%to convert color image into grayscale
new_img = rgb2gray(img);
subplot(1,2,2);imshow(new_img);


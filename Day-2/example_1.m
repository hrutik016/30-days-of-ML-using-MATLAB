clc;
clear all;
close all;

%to read the image
img = imread('D:\hrutik\Wallpapers\DIP\11.png');

%to show the image
imshow(img);

%to show the pixel value with the image
impixelinfo

%to write image
imwrite(img, 'test.bmp');

%***** For Medical Image *******
img_med = dicominfo('CT-MONO2-16-ankle.dcm');
img_read = dicomread(img_med)
figure, imshow(img_read, []);
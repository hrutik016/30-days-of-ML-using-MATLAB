clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\4.jpg');

%subplot to divide the output into sub parts
subplot(2,2,1);imshow(img)

%to convert color image into grayscale
new_img = rgb2gray(img);
subplot(2,2,2);imshow(new_img);

%resize
resize_img = imresize(new_img,[256 256]);
subplot(2,2,3);imshow(resize_img);

%to binary image
resize_img2 = im2bw(resize_img);
subplot(2,2,4);imshow(resize_img2);


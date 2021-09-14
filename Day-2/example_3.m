clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\4.jpg');

%to split rgb image into each color, for version >20
%[r g b] = imsplit(img);

%for lower we can use 
r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);

Red(:,:,1)=r;
Red(:,:,2)=0;
Red(:,:,3)=0;
figure; imshow(Red);

Green(:,:,2)=g;
Green(:,:,1)=0;
Green(:,:,3)=0;
figure; imshow(Green);

Blue(:,:,3)=r;
Blue(:,:,1)=0;
Blue(:,:,2)=0;
figure; imshow(Blue);


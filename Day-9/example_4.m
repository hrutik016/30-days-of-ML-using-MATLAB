clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\p8.jpg');

[hog1, validPoints1] = extractHOGFeatures(img,'Cellsize', [4 4]);
[hog2, validPoints2] = extractHOGFeatures(img,'Cellsize', [8 8]);
[hog3, validPoints3] = extractHOGFeatures(img,'Cellsize', [2 2]);

figure;
imshow(img); 
figure;
plot(validPoints1);
figure;
plot(validPoints2);
figure;
plot(validPoints3);

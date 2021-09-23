%harris features

clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\p8.jpg');
gray_scale = rgb2gray(img);

points = detectHarrisFeatures(gray_scale);
figure;
imshow(img);
hold on;
plot( points);

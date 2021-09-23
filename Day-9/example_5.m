%MSER - Maximum Stable External Regions
clc;
clear all;
close all;

img = imread('coins.png');
regions = detectMSERFeatures(img);

%inside the returned 'regions' object
figure;
imshow(img);
hold on;
plot(regions, 'showPixelList', true, 'showEllipses', false);
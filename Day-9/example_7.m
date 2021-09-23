%eigen value algorithm, find corners using minimum eigen value algo

clc;
clear all;
close all;

img = imread('cameraman.tif');
corners = detectMinEigenFeatures(img);

imshow(img);
hold on;
plot(corners);

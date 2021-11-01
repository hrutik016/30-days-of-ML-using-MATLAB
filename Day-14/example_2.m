%testing the CNN from previous

clc;
clear all;
close all;

load trainedNet.mat
[filename, pathname] = uigetfile('*.*','Pick a input image');
filename=strcat(pathname,filename);
im = imread(filename);
im = imresize(im, [128 128]);

%classify with deep learning
label = char(classify(covnet,im));

figure;
imshow(im);
title(label);

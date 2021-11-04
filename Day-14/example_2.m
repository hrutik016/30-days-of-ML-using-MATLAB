%testing the CNN from previous

clc;
clear all;
close all;

load trainedNet.mat
[filename, pathname] = uigetfile('*.*','Pick a input image');

if isequal(filename,0) || isequal(pathname,0)
    warndlg('User pressed cancel');
else
    img = imread([pathname filename]);
    class = classify(net, img);
    disp(class);
end
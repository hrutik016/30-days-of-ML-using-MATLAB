%to test webcame 

clc;
clear all;
close all;

camObj = webcam(1);

%to preview a stream of image frames
preview(camObj);
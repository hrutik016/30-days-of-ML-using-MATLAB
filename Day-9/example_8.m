%GLCM Extraction

clc;
clear all;
close all;

img = imread('circuit.tif');
glcm = graycomatrix(img, 'Offset', [2 0; 0 2]); 

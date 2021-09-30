%testing

clc;
clear all;
close all;

load knn2;

[filename, pathname] = uigetfile('*.', 'Choose an Image: ');

ImageDATA = imread(strcat(pathname, filename));
testFeatures=extractHOGFeatures(ImageDATA,'CellSize', [8 8]);

class = predict(knn2, testFeatures);

disp(class);





 
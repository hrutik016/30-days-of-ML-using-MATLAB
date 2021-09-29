clc;
clear all;
close all;

load classifier;

[filename, pathname] = uigetfile('*.', 'Choose a Image: ');

if isequal(filename,0) || isequal(pathname,0)
    disp('User pressed cancel')
else
       img = imread(strcat(pathname,filename));
       Feature=extractHOGFeature(img,'CellSize', [8 8]);
       Class=predict(classifier, Feature);
       disp(Class);
end
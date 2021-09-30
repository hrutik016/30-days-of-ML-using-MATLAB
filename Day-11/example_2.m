clc;
clear all;
close all;

load iris_dataset;

InputFeatures = irisInputs;
Targetclass = irisTargets';
Targetclass = vec2ind(Targetclass);
knn = fitcknn(InputFeatures, Targetclass);

save knn knn;

disp('STOP');
 

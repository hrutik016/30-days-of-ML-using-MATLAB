clc;
clear all;
close all;

load iris_dataset;

InputFeatures = irisInputs';
Targetclass = irisTargets;
Targetclass = vec2ind(Targetclass);
Targetclass = Targetclass';

knn1 = fitcknn(InputFeatures, Targetclass,'NumNeighbors',5);

save knn1 knn1;

disp('STOP');
 

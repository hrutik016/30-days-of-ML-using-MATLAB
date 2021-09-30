clc;
clear all;
close all;

load fisheriris;

InputFeatures = meas;
Inputclass = species;

knn = fitcknn(InputFeatures, Inputclass);
knn.NumNeighbors = 2;

save knn knn

%test
x1 = meas(53,:);
class = predict(knn, x1);
disp(class);
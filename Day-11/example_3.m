%to predict from previous one(example_1) 

clc;
clear all;
close all;

load knn;
load fisheriris;

data = meas(20,:);

class = predict(knn, data);

disp(class);
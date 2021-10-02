%to test on previous model

clc;
clear all;
close all;

load svm;
load cancer_datasets;
inp = input('choose the value:- ');
InputData = cancerInputs(:, inp);

class = predict(svm, InputData);

disp(class);

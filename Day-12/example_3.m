%classification learner app

clc;
clear all;
close all;

load cancer_dataset;

Features = cancerInputs';
TargetClass = cancerTargets;
TargetClass = vec2ind(TargetClass);
TargetClass = TargetClass';

Traindata = array2table(Features);
Traindata.Labels = TargetClass;


svm = fitcecoc(Features, TargetClass);

save svm svm;

disp('STOP');

clc;
clear all;
close all;

load cancer_dataset;

Features = cancerInputs';
TargetClass = cancerTargets;
TargetClass = vec2ind(TargetClass);
TargetClass = TargetClass';

svm = fitcecoc(Features, TargetClass);

save svm svm;

disp('STOP');

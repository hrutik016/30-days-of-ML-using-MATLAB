clc;
clear all;
close all;
load iris_dataset;

%neural network, you can view NN by: "view(net)"
net = patternnet(10);

InputFeatures = irisInputs;
Targetclass = irisTargets;

net = train(net, InputFeatures, Targetclass);

save net net;

disp('Stop');
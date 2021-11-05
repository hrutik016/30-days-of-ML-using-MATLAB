clc;
clear all;
close all;

%dataset folder contains images from the previous, example.
imds = imageDatastore('dataset','IncludeSubfolders',true,...
    'LabelSource','foldernames');

No_of_Class = numel(categories(imds.Labels));

%load model
net = alexnet();

Layers = net.Layers;

Layers(23) = fullyConnectedLayer(No_of_Class);
Layers(25) = classificationLayer();

options = trainingOptions('sgdm', ...
            'Plots', 'training-progress', ...
            'LearnRateSchedule', 'piecewise', ...
            'LearnRateDropFactor', 0.2, ...
            'LearnRateDropPeriod', 5, ...
            'MiniBatchSize', 300);
options.InitialLearningRate = 0.01;
options.MaxEpochs = 50;

disp(No_of_Class);

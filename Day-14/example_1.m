clc;
clear all;
close all;

imds = imageDatastore('dataset', 'IncludeSubfolders', true,...
    'LabelSource', 'foldernames');

no_of_images = numel(imds.Files);

[trainData, testData] = splitEachLabel(imds, 0.60, 'randomize');
save testData testData;

%architecture
layers = [imageInputLayer([128 128 3])
    convolution2dLayer(5, 10)
    reluLayer
    maxPooling2dLayer(2, 'Stride', 2)
    fullyConnectedLayer(2)
    softmaxLayer();
    classificationLayer()];


%training options
options = trainingOptions('sgdm',...
    'Plots', 'training-progress',...
    'LearnRateSchedule', 'piecewise',...
    'LearnRateDropFactor',0.2,...
    'LearnRateDropPeriod',5,...
    'MiniBatchSize',300)

%[net, info] = trainNetwork(trainData, Layers, options);
%save net net;

options.MaxEpochs = 30;
options.InitialLearnRate=0.0001;

%training
covnet = trainNetwork(trainGestureData, layers, options);
save('trainedNet.mat','covnet');
    
%classify and plot
[labels, err_test] = classify(covnet, testGestureData, 'MiniBatchSize', 300);
confusionchart(testGestureData.Labels, labels);
figure;
plotconfusion(testGestureData.Labels, labels)
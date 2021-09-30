clc;
clear all;
close all;

imds = imageDatastore('database', 'IncludeSubfolders', true,...
    'LabelSource', 'foldernames');

[TrainingData, TestigData] = splitEachLabel(imds, 0.7);
save TestingData TestingData

No_Of_file_trainingdataset = numel(TrainingData.Files);
No_Of_file_testdataset = numel(TestingData.Files);

for i=1:No_Of_file_trainingdataset
   ImageData = readimage(TrainingData, i);
   trainFeatures(i,:)=extractHOGFeatures(ImageData,'CellSize', [8 8]);
end

TrainingLabels = TrainingData.Labels;
TestLabels = TestingData.Labels;
save TestLabels TestLabels

knn2 = fitcknn(trainFeatures, TrainingLabels, 'NumNeighbors', 5);

save knn2 knn2



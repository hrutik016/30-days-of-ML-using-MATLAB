clc;
clear all;
close all;

load TestingData;
load TestLabels;
load knn2;


No_Of_file_testdataset = numel(TestingData.Files);

for i=1:No_Of_file_testdataset 
   ImageData = readimage(TestingData, i);
   testFeatures(i,:)=extractHOGFeatures(ImageData,'CellSize', [8 8]);
   predictedclass(i) = predict(knn2, testFeatures);
end

TestLabels = TestLabels';

confusionchart(TestLabels, predictedclass);

figure;
plotconfusion(TestLabels, predictedclass);

disp('STOP');
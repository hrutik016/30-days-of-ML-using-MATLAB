clc;
clear all;
close all;

imds = imageDatastore('dataset', 'IncludeSubFolders', true,...
    'LabelSource', 'foldernames');

No_of_Images = numel(imds.Files);
for i=1 : No_of_Images
    imgarr = readimage(imds, i);
    %figure; imshow(imgarr);
    Feature = extractHOGFeatures(imgarr, 'CellSize', [8 8]);
    trainFeature(i,:) = Feature;
    %figure; plot(Feature);
end

TrainLabels = imds.Label;
classifier = fitcecoc(trainFeature, TrainLabels);
save classifier;

disp(imds);


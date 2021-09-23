clc;
clear all;
close all;

img = imread('cameraman.tif')
new_img = imrotate(img, 45);
figure;
imshow(new_img);

points1 = detectSURFFeatures(img);
points2 = detectSURFFeatures(new_img);

[f1, pts1] = extractFeatures(img, points1);
[f2, pts2] = extractFeatures(new_img, points2);

index = matchFeatures(f1, f2);
matchedPoints1 = pts1(index(:,1));
matchedPoints2 = pts2(index(:,2));
figure;
showMatchedFeatures(img, new_img, matchedPoints1, matchedPoints2);
legend('matched points 1', 'matched points 2');

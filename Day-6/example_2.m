clc;
clear all;
close all;

faceDetector = vision.CascadeObjectDetector('FrontalFaceCART');
img = imread('D:\hrutik\images\professional\5B5A3017.jpg');
figure; imshow(img);

Bbox = step(faceDetector, img);
face = insertObjectAnnotation(img, 'rectangle', Bbox, 'FACE');
figure;
imshow(face);
disp('STOP');

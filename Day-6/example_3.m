clc;
clear all;
close all;

faceDetector = vision.CascadeObjectDetector('FrontalFaceCART');
eyeDetector = vision.CascadeObjectDetector('EyePairBig');

img = imread('D:\hrutik\images\professional\5B5A3017.jpg');
figure; imshow(img);

Bbox_face = step(faceDetector, img);
Bbox_eye = step(eyeDetector,img);

face = insertObjectAnnotation(img, 'rectangle', Bbox_face, 'FACE');
face = insertObjectAnnotation(face, 'rectangle', Bbox_eye, 'EYE');

figure;
imshow(face); 
disp('STOP');
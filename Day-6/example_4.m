clc;
clear all;
close all;

faceDetector = vision.CascadeObjectDetector('FrontalFaceCART');
eyeDetector = vision.CascadeObjectDetector('EyePairBig');
mouthDetector = vision.CascadeObjectDetector('Mouth');

img = imread('D:\hrutik\images\professional\5B5A3017.jpg');
figure; imshow(img);

Bbox_face = step(faceDetector, img);
Bbox_eye = step(eyeDetector,img);
Bbox_mouth = step(mouthDetector, img);

face = insertObjectAnnotation(img, 'rectangle', Bbox_face, 'FACE');
face = insertObjectAnnotation(face, 'rectangle', Bbox_eye, 'EYE');
face = insertObjectAnnotation(face, 'rectangle', Bbox_mouth, 'Mouth');

figure;
imshow(face); 
disp('STOP');
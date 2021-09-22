clc;
clear all;
close all;

camObj = webcam;
 
%preview(camObj);
faceDetector = vision.CascadeObjectDetector('FrontalFaceCART');

while(1)
    img = snapshot(camObj);
    Bbox_face = step(faceDetector, img);
    face = insertObjectAnnotation(img, 'rectangle', Bbox_face, 'FACE');
    Bbox_face = Bbox_face(1,:);
    cropped_face = imcrop(img, Bbox_face);
    filename = strcat(num2str(img), '.jpg');
    i = i+1;
    imwrite(cropedface, filename);
    imshow(face);
end
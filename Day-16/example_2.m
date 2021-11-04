%to takesnapshot

clc;
clear all;
close all;

camObj = webcam(1);

preview(camObj);

%to take snapshot of image, and display in a single frame
while(1)
    img = snapshot(camObj);
    imshow(img);
end

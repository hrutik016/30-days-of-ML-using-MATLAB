%webcame part, not available for this version
clc;
clear all;
close all;

camObj = webcam(1);

%preview a stream of image frames
%preview(camObj);

while(1)
    img = snapshot(camObj);
    gray = rgb2gray(img);
    
    edge1 = edge(gray, 'Canny');
    edge1 = edge1.*255;
    edgeFrame(:,:,1) = edge1;
    edgeFrame(:,:,2) = edge1;
    edgeFrame(:,:,3) = edge1;
    
    Outframe = [img edgeFrame];
    
    imshow(Outframe);
end

clc;
clear all;
close all;

camObj = webcam(1);
%acquire and display a single frame

while(1)
    img = snapshot(camObj);
    [r g b] = imsplit(img);
    
    %adding noise
    r = imnoise(r, 'salt & pepper', 0.02);
    g = imnoise(g, 'salt & pepper', 0.02);
    b = imnoise(b, 'salt & pepper', 0.02);
    
    %adding filter to remove noise
    r1 = medfilt2(r, [3 3]);
    g1 = medfilt2(g, [3 3]);
    b1 = medfilt2(b, [3 3]);
    
    imgn(:,:,1) = r; 
    imgn(:,:,2) = g; 
    imgn(:,:,3) = b;
    
    imgc(:,:,1) = r1;
    imgc(:,:,2) = g1;
    imgc(:,:,3) = b1;
    
    I = [img imgn imgc];
    imshow(I);
end
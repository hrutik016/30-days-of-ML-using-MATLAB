clc;
clear all;
close all;

img = imread('coins.png');

figure;
imshow(img);

%thresholding
thres = img > 100;

figure; imshow(thres);

thres = medfilt2(thres, [5 5]);
[L num] = bwlabel(thres);

%to traverse over each coin 
for i=1:num
    imshow(L==i);
    pause(1);
end

disp(num);
text = strcat('No of coins: ' ,num2str(num));
title(text);
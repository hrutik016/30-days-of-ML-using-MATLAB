clc;
clear all;
close all;

img = imread('D:\hrutik\Wallpapers\DIP\4.jpg');

%adding noise to the image
new_img = imnoise(img, 'salt & pepper', 0.05);

subplot(1,3,1); imshow(img);
subplot(1,3,2); imshow(new_img);

r = img(:,:,1);
g = img(:,:,2);
b = img(:,:,3);

r1 = medfilt2(r, [5 5]);
g1 = medfilt2(g, [5 5]);
b1 = medfilt2(b, [5 5]);

out(:,:,1) = r1;
out(:,:,2) = g1;
out(:,:,3) = b1;
subplot(1,4,3); imshow(out);
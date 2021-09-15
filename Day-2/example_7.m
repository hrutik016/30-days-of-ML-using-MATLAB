clc;
clear all;
close all;

img_1 = imread('D:\hrutik\Wallpapers\DIP\32.png');
img_1 = rgb2gray(img_1);

img_2 = edge(img_1, 'canny');
img_3 = edge(img_1, 'sobel');
img_4 = edge(img_1, 'prewitt');

figure;
subplot(2,2,1); imshow(img_1);
subplot(2,2,2); imshow(img_2); title('canny')
subplot(2,2,3); imshow(img_3); title('sobel')
subplot(2,2,4); imshow(img_4); title('prewitt')
clc;
clear all;
close all;
 
load net;
load iris_dataset;

while(1)
    A = input('Choose an Image Index: ');
    Input = irisInputs(:,A);

    class = net(Input);
    class = vec2ind(class);
    disp(class);
end


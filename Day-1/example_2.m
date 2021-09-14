clc;
clear all;
close all;

%loops in matlab

%for loop

A = 10;

for i=1:10
    A = A + 1;
end
disp(A)

B = 10
for i=1:2:10
    B = B + 1;
end
disp(B)

%while loop

count=1
while count<10
    count = count+1;
end
disp(count)

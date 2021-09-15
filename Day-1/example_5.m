clc;
clear all;
close all;

A = linspace(0,6);
B=sin(A);
C=cos(A);

plot(A,B,'r', 'LineWidth', 2);
grid on;
hold on;
plot(A,C,'b', 'LineWidth', 2);

xlabel('xaxis');
ylabel('yaxis');
title('heading');
gtext('place anywhere');
legend('sin', 'cos');
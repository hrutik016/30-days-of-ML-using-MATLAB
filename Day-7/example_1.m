clc;
clear all;
close all;

fis = readfis('traffic.fis');
north = 1;
south = 0;
east = 0;
west = 0;

out = evalfis(fis,[north,south,east,west]);
disp(out);
out  = out > 0.5
[val index] = max(out);

switch index
    case 1
        disp('North is Green!');
    case 2
        disp('South is Green!');
    case 3
        disp('East is Green!');
    case 4
        disp('West is Green!');
end
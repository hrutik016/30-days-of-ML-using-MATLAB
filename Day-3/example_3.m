%creating a resize video of resized frmae
clc;
clear all;
close all;

vidObj = VideoWriter('peaks.mp4', 'MPEG-4');
open(vidObj);

No_of_Frames = 141;
h=axes;
for i=1:No_of_Frames
   filename = strcat(num2str(i),'.bmp');
   A = imread(filename);
   imshow(frame, 'Parent', h);
   h.Visible='Off';
   currFrame = getframe(gca);
   writeVideo(vidObj,currFrame);
end

close(vidObj);


%creating a resize video of resized frmae
clc;
clear all;
close all;

vidObj = VideoWriter('Output.mp4', 'MPEG-4');
open(vidObj);
No_of_Frames = 141;
h=axes;
framerate=30;
for i=1:No_of_Frames
   filename = strcat(num2str(i),'.bmp');
   frame = imread(filename);
   imshow(frame, 'Parent', h);
   h.Visible='Off';
   currFrame = getframe(gca);
   writeVideo(vidObj,currFrame);
   pause(1/framerate);
end
close(vidObj);


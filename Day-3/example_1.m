clc;
clear all;
close all;
%to read video

videoObj = VideoReader('xylophone.mp4');
%NumFrames = A.NumberOfFrames;
FrameRate = videoObj.FrameRate;
%CurrentTime = videoObj.CurrentTime;
disp(videoObj);
h = axes;
while hasFrame(videoObj)
    frame=readFrame(videoObj);
    image(frame,'Parent',h);
    h.Visible = 'off';
    pause(1/FrameRate);
end


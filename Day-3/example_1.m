clc;
clear all;
close all;
%to read video

videoObj = VideoReader('xylophone.mp4');
FrameRate = videoObj.FrameRate;
NumFrames = videoObj.NumberOfFrames;
CurrentTime = videoObj.CurrentTime;
disp(videoObj);
h = axes;

while hasFrame(videoObj)
    Frame=readFrame(videoObj);
    image(Frame, 'Parent',h);
    h.Visible = 'off';
    pause(1/FrameRate);
end



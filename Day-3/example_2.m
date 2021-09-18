%to save every frame as a photo in directory
clc;
clear all;
close all;

videoObj = VideoReader('xylophone.mp4');
No_of_frames = videoObj.NumberOfFrames;
FrameRate = videoObj.FrameRate;

for i=1:No_of_frames
    filename = strcat(num2str(i), '.bmp');
    frame=read(videoObj, i);
    frme = imresize(frame, [526, 526]);
    imshow(frame);
    imwrite(frame, filename);
    pause(1/FrameRate);
end

%since the no of frames are 141, therefore 141 photos must have been save
%in the respective directory.


    
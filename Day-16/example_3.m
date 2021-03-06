clc;
clear all;
cloase all;

camObj = webcam(1);

preview(camObj);

i=0;
faceDetector = vision.CascadeObjectDetector
while(1)
    img = snapshot(camObj);
    imshow(img);

    %bounding box around the target
    bbox = step(faceDetector, img);
    
    if ~isempty(bbox)
        bbox = bbox(1,:);
        IFaces = insertObjectAnnotation(img, 'rectangle', bbox, 'Face');
        face = imcrop(img,bbox);

        %to save the image
        filename = strcat(num2str(i), '.bmp');
        imwrite(face,filename);

        i=i+1;
        imshow(IFaces);
    end
end

%after this create a folder and save around 50 snapshots from this, to
%create a database.

%create 2 such databases of different face images.

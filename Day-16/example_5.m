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

    bbox = step(faceDetector, img);
    
    if ~isempty(bbox)
        bbox = bbox(1,:);
        
        face = imcrop(img, bbox);
        face = imresize(face, [227 227]);
        class = classify(net, face);
        IFaces = insertObjectAnnotation(img, 'rectangle', bbox, 'Face');

        imshow(IFaces);
    end
end

% further we can go to deep network designer app in MATLAB, to see all the
% pretrained model available there.
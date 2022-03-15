function net = downloadPretrainedYOLOv3Detector()
% Download a pretrained yolov3 detector.
if ~exist('yolov3SqueezeNetVehicleExample_20b.mat', 'file')
    if ~exist('yolov3SqueezeNetVehicleExample_20b.zip', 'file')
        disp('Downloading pretrained detector (8.9 MB)...');
        pretrainedURL = 'https://ssd.mathworks.com/supportfiles/vision/data/yolov3SqueezeNetVehicleExample_20b.zip';
        websave('yolov3SqueezeNetVehicleExample_20b.zip', pretrainedURL);
    end
    unzip('yolov3SqueezeNetVehicleExample_20b.zip');
end
pretrained = load("yolov3SqueezeNetVehicleExample_20b.mat");
net = pretrained.net;
end
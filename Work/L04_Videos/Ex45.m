clear all
close all

v = VideoReader('veh_small.mp4');

height = v.Height;         % get height of the video frames
width  = v.Width;          % get width of the video frames
NoF    = v.NumberOfFrames; % get total number of frames in the video

% an array of size height x width x 1 x NoF:
video = zeros(height, width, 1, NoF);   

% Process every frame in the video
for i = 1:NoF
    frame = v.read(i); % read frame number i
    video(:,:,:,i) = rgb2gray( double(frame) / 255 );
end

% implay(video)

% an array of size height x width x 1 x NoF:
videoout = zeros(height, width, 1, NoF);   

% First frame = first frame
videoout(:,:,:,1) = video(:,:,:,1);

% Apply recursive rule
alpha = 0.01;
for i = 2:NoF
    videoout(:,:,:,i) = (1-alpha)*videoout(:,:,:,i-1) + alpha*video(:,:,:,i);
end

implay(videoout);

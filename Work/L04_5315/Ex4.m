v = VideoReader(['veh_small.mp4']);

height = v.Height; % get height of the video frames
width  = v.Width; % get width of the video frames
NoF    = v.NumberOfFrames; % get total number of frames in the video

% an array of size height x width x 1 x NoF:
video = zeros(height, width, 1, NoF);

% Process every frame in the video
for i = 1:NoF
    frame = v.read(i); % read frame number i
    frame = double(frame) / 255;  % Convert to double, value range 0 to 1
    frame = rgb2gray(frame);      % Convert RGB image to Grayscale image
    video(:,:,:,i) = frame;
end

implay(video)

% Exercise 5
alpha = 0.98;
video2 = zeros(height, width, 1, NoF);
video2(:,:,:,1) = video(:,:,:,1);
for n = 2:NoF
    video2(:,:,:,n) = alpha*video2(:,:,:,n-1) + (1-alpha)*video(:,:,:,n);
end
implay(video2);

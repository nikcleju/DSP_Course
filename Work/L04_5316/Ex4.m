v = VideoReader(['veh.mp4']);
height = v.Height;         % get height of the video frames
width  = v.Width;          % get width of the video frames
NoF    = v.NumberOfFrames; % get total number of frames in the video

% an array of size height x width x 1 x NoF:
video = zeros(height, width, 1, 200);

% Process every frame in the video
for i = 1:200
    frame = v.read(i); % read frame number i
    
    frame = double(frame) / 255;  % Convert to double(), value range [0...1]
    frame = rgb2gray(frame);      % Convert RGB image to grayscale image
    
    video(:,:,:,i) = frame;
end

%implay(video);

% Exercise 5
alpha = 0.97;
video2 = video;
for i = 2:200
    %         y[i]   = alpha*y[i-1] + (1-alpha)*x[i]
    video2(:,:,:,i)  = alpha*video2(:,:,:,i-1) + (1-alpha)*video(:,:,:,i);
end
implay(video2)
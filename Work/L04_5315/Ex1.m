% Exercise 1
%======================
I = imread('lena512.bmp');
I = double(I) / 255;
imshow(I);


% Exercise 2
%======================
height = 512; % desired height
width  = 512; % desired width
NoF    = 100; % desired number of frames
% an array of size height x width x 1 x NoF:
video = zeros(height, width, 1, NoF);
for i = 1:NoF
    %video(:,:,:,i) = circshift(I, [-3*(i-1)    -3*(i-1)]);
    %%video(:,:,:,i) = circshift(video(:,:,:,i-1), [0  3]);
    video(:,:,:,i) = I - 0.005*(i-1);
end

% Play the sequence
implay(video, 25);

% Fix: ensure we don't have any value larger than 1, it crashes Matlab
video(video > 1) = 1;
% Save file to disk
aviObj = VideoWriter('whatever.avi', 'Uncompressed AVI');
aviObj.open();
aviObj.writeVideo(video);
aviObj.close();
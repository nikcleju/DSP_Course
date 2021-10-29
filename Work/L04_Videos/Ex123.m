% Never forgetti
clear all
close all

% Read the initial image
I = imread('lena512.bmp');
I = double(I) / 255;
%imshow(I)

% Make a video sequence: scroll to the right
height = size(I,1); % desired height = number of lines
width  = size(I,2); % desired width  = number of columns
NoF    = 170; % desired number of frames
% an array of size height x width x 1 x NoF:
video  = zeros(height, width, 1, NoF);   

video(:,:,:,1) = I;
for i = 2:NoF
    prev = video(:,:,:,i-1);
    %video(:,:,:,i) = [ prev(:, width-2:width) , prev(:, 1:width-3) ]; 
    if i < 100
        video(:,:,:,i) = prev + 0.01; 
    else
        video(:,:,:,i) = prev - 0.01; 
    end
end

% Play the sequence
implay(video, 25);

% Fix: ensure we don't have any value larger than 1, it crashes Matlab
%video(video > 1) = 1;

% Save file to disk
aviObj = VideoWriter('AlaBalaPortocala.avi', 'Uncompressed AVI');
aviObj.open();
aviObj.writeVideo(video);
aviObj.close();
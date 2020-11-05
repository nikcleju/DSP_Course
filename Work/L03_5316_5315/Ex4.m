clear all
close all

I = imread('lena512.bmp');
I = double(I)/255;  %  % convert to double, value range 0 ... 1

imshow(I)


% Ex. 5

% Initialize I2 with I
I2 = I;

for i =2:511
    for j = 2:511
        I2(i,j) = 1/9*I(i-1, j-1) + 1/9*I(i-1, j) + 1/9*I(i-1, j+1) + ...
                  1/9*I(i  , j-1) + 1/9*I(i,   j) + 1/9*I(i  , j+1) + ...
                  1/9*I(i+1, j-1) + 1/9*I(i+1, j) + 1/9*I(i+1, j+1);
              
        % y[n] = 1/9 * x[n+1] + 1/9*x[n] + 1/9*x[n-1]
    end
end
figure
imshow(I2)
    
% Ex6

% Initialize I3 with I
I3 = I;
for i =2:511
    for j = 2:511
        I3(i,j) =   0*I(i-1, j-1)   -1*I(i-1, j) +   0*I(i-1, j+1) + ...
                   -1*I(i  , j-1) +  4*I(i,   j)    -1*I(i  , j+1) + ...
                    0*I(i+1, j-1)   -1*I(i+1, j) +   0*I(i+1, j+1);
              
        % y[n] = 1/9 * x[n+1] + 1/9*x[n] + 1/9*x[n-1]
    end
end
figure
imshow(I3)
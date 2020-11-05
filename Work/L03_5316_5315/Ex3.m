clear all
close all

R = [ zeros(200,100)   ones(200,100)   ones(200,100)];
G = [ zeros(200,100)   ones(200,100)   zeros(200,100)];
B = [ 0.5*ones(200,100)   zeros(200,100)   zeros(200,100)];

Icolor = cat(3, R, G, B);
imshow(Icolor)

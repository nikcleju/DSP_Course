clear all
close all

x1 = randn(1,500);
x2 = rand(1,500);
a = randn(1,1);
b = randn();

%   mysys1(a*x1 + b*x2) == a*mysys1(x1) + b*mysys1(x2)
y  = mysys1(a*x1 + b*x2);
y1 = mysys1(x1);
y2 = mysys1(x2);
ydreapta = a*y1 + b*y2;

%if sum(y == ydreapta) == length(y)
if all( abs(y-ydreapta) < 1e-12 )
    disp('System is linear');
else
    fprintf('System is not linear\n');
end

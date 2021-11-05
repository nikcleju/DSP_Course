function r = test_linear(system)

x1 = randn(1,500);
x2 = rand(1,500);
a = randn(1,1);
b = randn();

%  We want to check if:
%       system(a*x1 + b*x2) == a*system(x1) + b*system(x2)
y  = system(a*x1 + b*x2);
y1 = system(x1);
y2 = system(x2);
ydreapta = a*y1 + b*y2;

%if sum(y == ydreapta) == length(y)  % not good because of rounding errors!
if all( abs(y-ydreapta) < 1e-12 )
    disp('System is linear');
    r = 1;
else
    fprintf('System is not linear\n');
    r = 0;
end

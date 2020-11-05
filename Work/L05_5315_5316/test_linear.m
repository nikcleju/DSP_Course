function y = test_linear(sys)

x1 = randn(1, 500);
x2 = randn(1, 500);
a = randn();
b = randn();

y1 = sys(x1);
y2 = sys(x2);
ytotal = sys(a*x1 + b*x2);

dif = ytotal - (a*y1 + b*y2);

% Check
if( all( abs(dif) < 1e-14  )  )
    disp('It is linear!!');
    y = 1;
else
    disp('Sorry, it is not linear!!');
    y = 0;
end
x1 = randn(1, 500);
x2 = randn(1, 500);
a = randn();
b = randn();
%a = 1;
%b = 1;

y1 = mysys1(x1);
y2 = mysys1(x2);
ytotal = mysys1(a*x1 + b*x2);

dif = ytotal - (a*y1 + b*y2);

% Check
if( all( abs(dif) < 1e-14  )  )
    disp('It is linear!!');
else
    disp('Sorry, it is not linear!!');
end
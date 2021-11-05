function r = test_invar(system)

x = randn(1,500);
y = system(x);

k = 1;
xnew = x(1+k:end);  % skip first k elements
ynew = system(xnew);

% Check if ynew == y(1+k:500)
if all( abs(ynew-y(1+k:end)) < 1e-12 )
    disp('System is time-invariant');
    r = 1;
else
    fprintf('System is not time-invariant\n');
    r = 0;
end

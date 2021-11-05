function r = test_invar_thegoodone(system)

x = randn(1,500);
y = system(x);

k = 1;
%xnew = x(1+k:end);  % skip first k elements
%ynew = system(xnew);
xnew = [zeros(1,k) x];  % put k zeros in front, to delay x
ynew = system(xnew);

% Check if ynew == y delayed by the same k elements
if all( abs(ynew-[zeros(1,k) y]) < 1e-12 )
    disp('System is time-invariant');
    r = 1;
else
    fprintf('System is not time-invariant\n');
    r = 0;
end

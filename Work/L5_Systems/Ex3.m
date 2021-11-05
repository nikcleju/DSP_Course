r = test_linear(@mysys1)  % This should say is linear
r = test_linear(@sqrt)    % This should say it is non-linear

r = test_invar(@mysys1)  % This should say is time-invar
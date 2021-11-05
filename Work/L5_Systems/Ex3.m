r = test_linear(@mysys1)  % This should say is linear
r = test_linear(@sqrt)    % This should say it is non-linear

% Does not work properly
r = test_invar(@mysys1)  % This should say is time-invar

% This one does work
r = test_invar_thegoodone(@mysys1)  % This should say is time-invar
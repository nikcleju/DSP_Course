clear all
close all

%x = [1, -1, 1, -1, ...]
x = ones(1, 20000);
for i = 2:2:20000   %  i starts from 2, with step of 2, going to 20000
    x(i) = -1;
end
sound(x, 80000);
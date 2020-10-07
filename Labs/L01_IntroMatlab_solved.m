% Use this to clear the workspace before a new run
clear all
close all

%----------------------
% Exercitiul 1
%----------------------
a = 5;
b = 0.3;

calcul1 = a + b;
calcul2 = a/b;
calcul3 = a^b;
calcul4 = exp(a + log(b));
calcul5 = sin(a) + cos(b + pi/2);


%----------------------
% Exercitiul 2
%----------------------
A = zeros(1,10);
B = ones(4,6);
C = 1:2:21;   % from 1 to 21 in steps of 2

A(3) = 5;
B(2,4) = 7;
D = C.^2;
E = 4*C - 50;
comp = sum(C>E);  % Try C>E. What is the result? What does sum() do here?
whatever = sin(D);

%----------------------
% Exercitiul 3
%----------------------
t = linspace(0,10,1000);  % start, stop, how many
f = 0.5;
x = cos(2*pi*f*t);
plot(x);
figure     % What does this do?
plot(t,x); % This is better. What is the difference?

%----------------------
% Exercitiul 4
%----------------------
% period = 1/frequency.
% Frequency = 0.2 => period = 5 => 3 periods = 15 seconds
t = linspace(0,15, 300);
f = 0.2;
figure
stem(t, sin(2*pi*f*t + pi/4));
% Why is the plot so "colturos"? What can we do to improve the looks of it?


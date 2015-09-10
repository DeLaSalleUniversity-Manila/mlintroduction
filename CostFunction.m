clc

x = load('ml1x.dat');
y = load('ml1y.dat');

m = length(x);

figure, plot(x,y,'rh', 'markerfacecolor', 'auto');
xlabel('Age (yrs.)');
ylabel('Height (m)');



% For convenience of notation, add x_0 = 1, x_1 = <age in yrs. data>
  x = [ones(m, 1), x];


% Calculate J matrix

% Grid over which we will calculate J
theta0_vals = linspace(-3, 3, 50);
theta1_vals = linspace(-1, 1, 50);

% initialize J_vals to a matrix of 0's
J_vals = zeros(length(theta0_vals), length(theta1_vals));

for i = 1:length(theta0_vals)
	  for j = 1:length(theta1_vals)
	  t = [theta0_vals(i); theta1_vals(j)];
                        %  50x2 * 2x50 -50x1  50x2 * 2x50 - 50x1
	  J_vals(i,j) = (1/(2*m)) .* (x * t - y)' * (x * t - y);
    endfor
endfor

J_vals = J_vals';


figure, surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0');
ylabel('\theta_1');

print -dpng CostSurfacePlot

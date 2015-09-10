% Based on Andrew Ng's Machine Learning course

clc

x = load('ml1x.dat');
y = load('ml1y.dat');


figure, plot(x,y,'rh', 'markerfacecolor', 'auto');
xlabel('Age (yrs.)');
ylabel('Height (m)');


m = length(x);
MAX_ITERATION = 1500;
alpha = 0.07;

% For convenience of notation, add x_0 = 1, x_1 = <age in yrs. data>
x = [ones(m, 1), x];

% The size of vector theta is equal to the  number of x columns
theta = zeros(columns(x),1);  % initialize theta as zero column vector

for ii = 1:MAX_ITERATION
           % Dimensions:      2x50 (50x2 * 2x1  - 50x1) = 2x1 
           gradient = (1/m).* x' * ((x * theta) - y);
           theta = theta - alpha .* gradient;
endfor

 printf("The result after %d iterations is : \n", MAX_ITERATION);
 theta

 hold on;
 plot(x(:,2), x*theta, 'g-');

 % Prediction

 % age = 3.5
 printf("Predicted height of a 3.5 year-old boy is ");
 height1 = [1, 3.5]*theta
 plot(x, height1*ones(size(y)),'b:');
 plot(3.5*ones(size(y)), y,'b:')

 % age = 7
 printf("Predicted height of a 7 year-old boy is ");
 height2 = [1, 7]*theta
 plot(x, height2*ones(size(y)),'b:');
 plot(7*ones(size(y)), y,'b:')

 grid on

 print -dpng ml1prediction

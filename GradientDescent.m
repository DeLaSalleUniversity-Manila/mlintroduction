% Based on Andrew Ng's Machine Learning course

clc

x = load('ml1x.dat');
y = load('ml1y.dat');

m = length(x);
MAX_ITERATION = 1500;
alpha = 0.07;

% For convenience of notation, add x_0 = 1, x_1 = <age in yrs. data>
x = [ones(m, 1), x];

% The size of vector theta is equal to the  number of x columns
printf("Initial theta: \n");
theta = zeros(columns(x),1)  % initialize theta as zero column vector

for ii = 1:MAX_ITERATION
           % Dimensions:      2x50 (50x2 * 2x1  - 50x1) = 2x1 
           gradient = (1/m).* x' * ((x * theta) - y);
           theta = theta - alpha .* gradient;
           if (ii == 1)
              printf("The result after one iteration is : \n");
              theta
           endif
endfor

 printf("The result after %d iterations is : \n", MAX_ITERATION);
 theta

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
printf("Initial theta: \n");
theta = zeros(columns(x),1)  % initialize theta as zero column vector

for ii = 1:MAX_ITERATION
           % Dimensions:      2x50 (50x2 * 2x1  - 50x1) = 2x1 
           gradient = (1/m).* x' * ((x * theta) - y);
           theta = theta - alpha .* gradient;
           hold on;
           plot(x(:,2), x*theta, 'g-');
           sleep(1); 
endfor

 printf("The result after %d iterations is : \n", MAX_ITERATION);
 theta

% Based on Andrew Ng's Machine Learning course

clc

x = load('ml1x.dat');
y = load('ml1y.dat');

m = length(x);

figure, plot(x,y,'rh', 'markerfacecolor', 'auto');
xlabel('Age (yrs.)');
ylabel('Height (m)');

print -dpng ml1data

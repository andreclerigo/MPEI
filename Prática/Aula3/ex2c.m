clear all;

xi = 0 : 4;
p = [0.9 0.09 0.01];
b = [0 cumsum(p) 1];

stairs(xi, b),xlabel('x'),ylabel('Fx(x)')
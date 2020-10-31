clear all;
N = 1e6;
    
partes = rand(5,N) < 0.3;
num = sum(partes); %numero de pecas defeituosas
X = 0:5
fX = zeros(1,6)

for i = X
    fX(i+1) = sum(num==i) / N;
end

stem(X, fX)
axis([-1 6 0 0.4])
grid on

%%%%%%%b)
Px = cumsum(fX)
stairs([-1 X], [0 Px])
axis([-1 6 0 1.1])

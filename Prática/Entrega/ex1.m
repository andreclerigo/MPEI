% O brinquedo é constituído por 2 componentes separada mais o processo de
% montagem
% Componente 1 (1) - tem uma probabilidade de 0.2% de ser defeituosa
% Componente 2 (2) - tem uma probabilidade de 0.5% de ser defeituosa
% Montagem (a) - tem uma probabilidade de 1% de ser defeituosa mesmo que
% nenhuma das componentes seja defeituosa

%%%1
%a)
%Evento A - uma caixa de brinquedos ter pelo 1 brinquedo defeituoso
%numero de brinquedos numa caixa (n)
N = 1e6;
n = 8;

p1 = 0.002; %(0.2%)
p2 = 0.005; %(0.5%)
pa = 0.01;  %(1%)

C1 = rand(n,N) < p1;
numC1 = sum(C1);
C2 = rand(n,N) < p2;
numC2 = sum(C2);
A = rand(n,N) < pa;
numA = sum(A);

Total = numC1 + numC2 + numA; %vetor linha se o valor for !=0 representa caixa com defeito
numTotal = sum(Total >= 1); %numero de caixas com defeito

prob = numTotal / N

%%b)
x = numA==1 & numC1== 0 & numC2==0


% week 3 exercise 3.1.1 Histograms
% 3.1
clear

n = 1000

for i = 1:10
%     a = gauss(n,0);
    a = laplace(n, 1)
    h(i,:) = hist(+a,-5:5);
end;
errorbar (-5:5, mean(h), std(h))

% 3.1
a = gauss(1000000,[0 0]);
hist2(a, 200);


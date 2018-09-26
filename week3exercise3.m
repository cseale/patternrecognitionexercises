% author: Colm Seale
% course: IN4085 - Pattern Recognition

% exercise 3.7

a = gendats([20, 20],1,8)
k = 3;
w = knnm(a,k);
scatterd(a);
plotm(w,1);

% exercise 3.9

clear
hold off;

a = gendats([5,5],1,8);
gx = [-3:0.2:11]';
D = sqrt(distm(gx,a));
n = size(D,1)
k = 1;

Dsort = sort(+D, 2)

phat = k *1./(n*2*Dsort(:,k));

scatterd(+a)
hold on;
plot(gx, phat);
axis([0 10 0 1]);

% exercise 3.12

clear; 
close;
hold off;

b = gendatb(100);

w = parzenc(b, .1);
v = knnc(b, 3);
z = naivebc(b, 4)

scatterd(b);
plotc(w);
plotc(v, 'r');
plotc(z, 'b');







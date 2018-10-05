% author: Colm Seale
% course: IN4085 - Pattern Recognition

% exercise 3.15

clear; 
close;
hold off;

b = gendatb(100);
b(:,2) = 10*b(:,2);


p = parzenc(b, .1);
k = knnc(b, 3);
n = naivebc(b, 4);
nm = nmc(b,4);
l = ldc(b);
q = qdc(b);
f = fisherc(b);

scatterd(b);
plotc(p, 'cyan'); % affected by scale, as it calculates the area around a point
plotc(k, 'green'); % affected by scale, because some neighbours in a dimension are treated as 'nearer' than others
plotc(n, 'yellow'); % not effected by scale, treats each feature indenependently based on class priors in an area
plotc(nm, 'black'); % badly affected by scale, throughs the mean off
plotc(l, 'magenta'); % not affected? decision boundary remains linear regardless of scale
plotc(q, 'red'); % affected by scale, changes the curvature of the decision boundary
plotc(f, 'blue'); % PCA, not effected, uses dimensionality reduction to scale and reduce data in multiple dimensions









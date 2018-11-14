hold on;


a = gendatb([10 10]);
W = fisherc(a);
scatterd(a);
plotc(W);


hold off;

close;
clear;

P = parzenc(a);
plotc(P);
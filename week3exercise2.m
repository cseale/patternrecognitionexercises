% author: Colm Seale
% course: IN4085 - Pattern Recognition

% exercise 3.3

a = gendats([20, 20], 1, 8)
h = 1
w = parzenm(prdataset(+a), h)
scatterd(+a); plotm(w,1);

% (d) A value of h=1 seems to produce the best graph

% exercise 3.4
a = gendats([20, 20],1,8);
[trn, tst] = gendat(a,0.5);
hs = [0.1 0.25 0.5 1 1.5 2 3 4 5];
for i = 1:length(hs)
    w = parzenm(prdataset(+trn),hs(i));
    Ltrn(i) = sum(log(+(trn*w)));
    Ltst(i) = sum(log(+(tst*w)));
end;
plot(hs, Ltrn, 'b-'); 
hold on;
plot(hs, Ltst, 'r-');


% 3.4 (a) Best fit for dataset, but not for population distribution






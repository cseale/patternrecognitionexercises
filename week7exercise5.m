% generate data
a1 = mfeat_kar, [b1,c1,I,J] = gendat(a1,0.3);
a2 = mfeat_zer, b2 = a2(I,:); c2 = a2(J,:);
a3 = mfeat_mor, b3 = a3(I,:); c3 = a3(J,:);
% build 3 classifiers
w1 = nmc(b1)*classc; w2 = nmc(b2)*classc; w3 = nmc(b3)*classc;
% estimate error rates
c1*w1*testc
c2*w2*testc
c3*w3*testc


w_comb = nmc([b1 b2 b3]);
testc([c1 c2 c3]*w_comb);

v = [w1; w2; w3]*meanc;
[c1 c2 c3]*v*testc;

v_min = [w1; w2; w3]*minc;
[c1 c2 c3]*v_min*testc;

v_max = [w1; w2; w3]*maxc;
[c1 c2 c3]*v_max*testc;

v_median = [w1; w2; w3]*medianc;
[c1 c2 c3]*v_median*testc;

v_prod = [w1; w2; w3]*prodc;
[c1 c2 c3]*v_prod*testc;

v_vote = [w1; w2; w3]*votec;
[c1 c2 c3]*v_vote*testc;

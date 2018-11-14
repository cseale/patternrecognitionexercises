clear;
close all;
% exercise 7.7
train = gendath([50 50]);
test = gendath([200 200]);

scatterd(train);

w1 = nmc(train);
w2 = ldc(train);

p1 = test*w1*classc;
p2 = test*w2*classc;

p = [p1 p2];

% exercise 7.8
v = [nmc*classc ldc*classc]*fisherc;
w_comb = v(train);

testc(train, w1);
testc(train, w2);
testc(train, w_comb);

hold on;
plotc(w1);
plotc(w2, 'green');
plotc(w_comb, 'magenta');

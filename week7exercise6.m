clear;
close all;

train = gendatd([50 50], 2);
test = gendatd([200 200], 2);

w = treec(train, 'infcrit', 0);
w_bag = baggingc(train,treec([],'infcrit',0));


figure;
scatterd(test);
hold on;

plotc(w);
testc(test*w);

plotc(w_bag, 'g');
testc(test*w_bag);


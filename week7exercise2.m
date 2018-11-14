clear;
close all;
clf;

% exercise 7.2 (b), vary differences in means
train = gendatd([50 50], 2, 1, .1);

test = gendatd([200 200], 2, 1, .1);

w = [];
for i = -2:12
    w{i+3} = treec(train, 'infcrit', i);
    testc(test*w{i+3});
    figure;
    scatterd(train);
    title('TreeC ' + i);
    hold on;
    plotc(w{i+3});
    hold off;
end
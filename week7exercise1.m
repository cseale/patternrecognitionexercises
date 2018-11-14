clear;
close all;

train = gendats([50 50], 2, 1);

test = gendats([200 200], 2, 1);

w = [];
for i = -2:12
    % Exercise 7.1
    w{i+3} = treec(train, 'infcrit', i);
    testc(test*w{i+3});
    % Ex
    figure;
    scatterd(train);
    title('TreeC ' + i);
    hold on;
    plotc(w{i+3});
    hold off;
end
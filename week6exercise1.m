% 6.2
prwaitbar off;
clear;
close all;

% data set generation
train = gendats([3 3], 2, 0);

% generate neural networks
w = [];
colors = ['g' 'r' 'b', 'c', 'y'];
for i = 1:3
    figure;
    scatterd(train);
    hold on;
    w{i} = bpxnc(train, i, 1000);
    plotc(w{i}, colors(i));
end

% 6.3
% Generate Data
clear;
close all;
a = gendatb();
scatterd(a);
hold on;

% Initialise variables
w = [];
colors = ['g' 'r' 'b', 'c', 'y', 'm'];

% Create classifiers
for i = 3:6
    w{i} = bpxnc(a, i, 1000);
    plotc(w{i}, colors(i));
end

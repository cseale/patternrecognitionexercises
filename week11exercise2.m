clear;
close all;

% 11.1
% 100, choose 5
nchoosek(100, 5);

% 11.2
a = gendatd(100, 10);

% forward search, best features are 1 and 2
[W, R] = featself(a, 'maha-s', 2);
% backward search 
[W, R] = featselb(a, 'maha-s', 2);

% plus l take-away r
[W, R] = featsellr(a, 'maha-s', 2, 2, 1);

% floating search
[W, R] = featselp(a, 'maha-s', 2);

% Yes, they all agree that 1 and 2 are the best features
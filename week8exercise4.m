% 8.4
clear;
close all;

% generate dataset
a = gendatb([1000 1000]);

train_set_sizes = [64 128 256 512];

err_knnc = cleval(a, knnc([],1), train_set_sizes);

plote(err_knnc, 'b');

% we can see that for a 1NN the apparent error is always 0
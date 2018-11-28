clear;
close all;

a = gendatc([10 10]);

train_set_sizes = [1 2 3 4 5 6 7 8 9 10];

err_nmc = cleval(a, nmc([]), train_set_sizes);

plote(err_nmc, 'b');
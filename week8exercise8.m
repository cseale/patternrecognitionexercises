clear;
close all;

a = gendatb([10 10]);
% kNN

for n = 1:3
    n_err = [];
    for k = 2:12
        [err, ~, ~] = prcrossval(a, knnc([], n), k, 10);
        n_err = [n_err err];
    end
    figure;
    plot(n_err);
end


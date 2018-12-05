clear;
close all;

% Exercise 10.5 (a)

% a = +gendats([50 50], 2, 10);
a = +gendats([50 50], 2, 5);

figure;
scatterd(a);

g = [1, 2, 3, 5, 10, 20, 40, 50, 100];

within_scatter = zeros(10,length(g));

for i = 1:10
    for j = 1:length(g)
        [u, b, ws] = kmclust(a, g(j), 0, 0);
        within_scatter(i, j) = ws;
        within_scatter(i, j) = within_scatter(i, j)/within_scatter(i, 1);
    end
end

figure;

means = mean(within_scatter)
stds = std(within_scatter)
errorbar(g, means, stds)
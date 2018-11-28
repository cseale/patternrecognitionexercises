clear;
close all;

prload triclust;

scatterd(a);

kmclust(a, 3, true, true)

% (a) Because the clusters have stable means and no further iterations will
% change the clustering, but this clustering is not the global optimum of 3
% clusters

% (b) No, because hierarchical clustering will consider all the individual
% points in relation to one another, whereas kmeans will only consider
% clusters based on the initial starting clusters.

% (c) picking points evenly distributed around the space


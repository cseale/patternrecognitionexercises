clear;
close all;
prload cigars

for k = 1:5
    kmclust(a, k, true, true)
end 


clear;
close all;
prload messy

for k = 1:5
    kmclust(a, k, true, true)
end 

% better suited to messy dataset as the clusters are spherical. Kmeans will
% never produce the correct clusters for the cigars dataset
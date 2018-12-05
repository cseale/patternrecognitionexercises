% Exericse 10.1 (a) 
% Because we are defining clusters as groups of items which have a large
% euclidian distance between them.

% Exercise 10.2 (a)
prload triclust;

interactclust(triclust, 's', 1);

% (b)
% it does not because the jumps between 3 clusters and 2 clusers is very
% similar
interactclust(triclust, 'c', 1);


% Exericise 10.3 (a) there are 2 potential clusters
prload hall;
interactclust(hall, 's', 1);

% Exercise 10.4 (a)
prload messy;
interactclust(messy, 's', 1);

% (b) No, because the clustering is simply picking outliers for the
% dataset.

% (c)
interactclust(messy, 'c', 1);
% produces better clusters due to the fact that complete is less affected
% by outliers



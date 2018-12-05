% Exercise 10.7
% (a) 
help hdb

% (b) 
prload triclust
scatterd(triclust)

% (c) % as clusters get smaller, values converge to a constant
% see this in slides
hdb(triclust, 'c', 'Euclidean', 10)
hdb(triclust, 'c', 'Euclidean', 20)

% (d) % multiple ideal points for clustering
prload hall
scatterd(hall)
hdb(hall, 'c', 'Euclidean', 20)


% (e)
% does not help because data is not speherical shape
prload cigars
scatterd(cigars)
interactclust(cigars, 's')
hdb(cigars, 's', 'Euclidean', 20)
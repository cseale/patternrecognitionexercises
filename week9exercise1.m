prload hall;

scatterd(a);
% Exercise 9.1
% (a) 14 clusters available
% (b) Probably best will be k-means clustering?

interactclust(a, 'a');

% Exercise 9.2
prload rnd;
% (a)
scatterd(a);
interactclust(+a, 'c');
% (b)
% No hierarchical clustering
% No structure, stems are all similar

% (c)
interactclust(+a, 'a');
interactclust(+a, 's');
prload messy;

scatterd(a);
% (a) 2 clusters

interactclust(+a,'s');

% (b) No
% (c) There are no appropriate number? Single linkage seems to be very
% sensitive to outliers. In this case it spots outliers as their own
% cluster, so maybe 2?
prload cigars

scatterd(a);
% (a) 2 clusters

interactclust(+a,'s');
% (b) Yes

interactclust(+a,'c');
% (c) No
% Complete clustering picks the furtherest points away in each cluster.
% These two clusters are elongated on either side, meaning that some points
% in what should be the same cluster are actually further away than points
% between the different clusters. As the clusters grow, the points being
% measured are located at the clusters furtherest tips, effectively
% splitting them in half
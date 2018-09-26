% example prtools session
% http://prtools.org/prtools/example-session-in-prtools/

% generate dataset
A = gendatb([50 50]);

% 80/20 train/test split
[C,D] = gendat(A,0.2);

% train w1 with quadratic classifier
w1 = qdc(C);
% train w2 with k-nearest neighbours classifier
w2 = knnc(C,3);

% Objects from the test set can be evaluated by the classifier by mapping
% the dataset using the classifier
mappedD = D*w1
 
% obtain classification labels
labels = mappedD*labeld
 
% Estimate the error of both classifiers on the test set
err1 = D*w1*testc
err2 = D*w2*testc

% We are dealing with a 2D dataset so we can make a scatterplot of this data and plot the decision boundary in it.
figure(1); clf;
scatterd(D);
plotc(w1,'k');
plotc(w2,'r');

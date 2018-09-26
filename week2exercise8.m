% week2-exercise2-8

% generate some random data
X = randn(1000, 2)

% element multiplication
X = X .* [3 1]

% rotation
a = - pi / 4
X = X * [cos(a) -sin(a); sin(a) cos(a)]

% convert to pr dataset
a = prdataset(X)

% scatter plot
scatterd(a)

% determine estimates for a normal distribution
w = gaussm(a)

% plot
plotm(w)


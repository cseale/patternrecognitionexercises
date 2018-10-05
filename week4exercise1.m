% author: Colm Seale
% Pattern Recognition Lab 4

clear;
close;

%
% Data generation
%
a = gendats([20, 20], 2, 6);
scatterd(a);


%
% Variable Declaration
%

% nlab
[nlab, lablist] = getnlab(a);
% number of rows
N = length(+a);
% features
X = [+a ones(N, 1)];
% delta
d = [-1 1];

% 
% Begin Perceptron.......
% 

% initialise weights randomly
W = rand(1, 3);
% learning rate
p = 0.5;
% misclassification set
Y = [];
% iteration count
t = 1;

while t == 1 || not(isempty(Y))
    Y = [];

    for i = 1:N
        % classify x
        if d(nlab(i)) * dot(W(t, :), X(i,:)) >= 0
            % if missclassified, append to Y
            Y = [Y ; d(nlab(i)) * X(i,:)];
        end
    end
    
    % Error correction
    W(t + 1, :) = W(t, :) - p * sum(Y);
    
    t = t + 1;
end

%
% plot discriminant 
%
scatter(X(:,1), X(:,2), '+');
hold on;
x = linspace(min(X(:,1)), max(X(:, 1)));
y = -(W(t, 1)/W(t, 2)) * x - (W(t, 3)/W(t, 2));
plot(X(:, 1), X(:,2), 'b.', x, y);

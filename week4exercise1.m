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
        if d(nlab(i)) * dot(W, X(i,:)) >= 0
            % if missclassified, append to Y
            Y = [Y ; d(nlab(i)) * X(i,:)];
        end
    end
    
    % Error correction
    W = W - p * sum(Y);
    
    t = t + 1;
end

%
% plot discriminant 
%
gscatter(X(:,1), X(:,2), nlab ,'rgb', 'osd');
hold on;
x = linspace(min(X(:,1)), max(X(:, 1)));
y = -(W(1)/W(2)) * x - (W(3)/W(2));
line(x, y, 'Color', 'cyan')

%
% Least Squares
%

LSW = (inv(X' * X)) * X' * ((nlab == 1) - (nlab == 2));
y = -(LSW(1)/LSW(2)) * x - (LSW(3)/LSW(2));
line(x, y, 'Color', 'blue');

%
% Fischers Discriminiant 
%
FISHW = fisherc(a);
plotc(FISHW);

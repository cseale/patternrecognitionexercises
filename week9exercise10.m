clear;
close all;

% (a) gauss is unconstrained and can fall into local optimums
% (b) circular does not as it constrains the covariance matrix of the
% gaussian distributions
prload triclust;
em(a, 3, 'gauss', 0, 1, 0);

% (b) 2 is best
prload cigars;
for i = 1:5
    em(a, i, 'aligned', 0, 1, 0);LL_std = std(LLs);
    pause;
end

% (c) 
% prload rnd;
prload messy;
LLs = zeros(5, 20);
for g = 1:5
    for i = 1:20
        [L,MU,C,P] = em(a, g, 'gauss', 0, 0, 0);
        LLs(g, i) = L; 
    end
end

LL_mean = mean(LLs, 2);
LL_std = std(LLs')';

errorbar(LL_mean, LL_std);

% (d) load rnd. notice that the likelihood always goes up. This because the
% data does not belong to any distribution, we should expect this to keep
% increases until each point as its own distribution

% (e) load messy. 3 clusters, circular is best




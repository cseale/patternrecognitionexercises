clear;
close all;

% 11.3
a = diabetes;

% (a)
%[A,B,IA,IB] = gendat(a,.5);

A = a(1:384, :);
B = a(385:end, :);

all_feats = [1 2 3 4 5 6 7 8];
all_feat_combinations = nchoosek(all_feats, 5);

best_err_fish = 1;
best_1nn = 1;

for i = 1:length(all_feat_combinations)
    combination = all_feat_combinations(i,:);
    trn = A(:, combination);
    test = B(:, combination);

    w_fish = fisherc(trn);
    err_fish = testc(test, w_fish);
    
    if err_fish < best_err_fish 
        best_err_fish = err_fish;
        best_combination_fish = combination;
    end
    
    w_1nn = knnc(trn, 1);
    err_1nn = testc(test, w_1nn);
    
    if err_1nn < best_1nn 
        best_1nn = err_1nn;
        best_combination_1nn = combination;
    end
end

% best combination fish = 
best_combination_fish
best_err_fish

% best combination 1nn = 
best_combination_1nn
best_1nn

% forward search, best features are 1 and 2
[W, R] = featself(a, 'maha-s', 5);
+W
R
trn = A(:, +W);
test = B(:, +W);
wf = fisherc(trn);
testc(test*wf);

wf = knnc(trn, 1);
testc(test*wf);

% backward search 
[W, R] = featselb(a, 'maha-s', 5);
+W
R
% plus l take-away r
[W, R] = featsellr(a, 'maha-s', 5, 2, 1);
+W
R
% floating search
[W, R] = featselp(a, 'maha-s', 5);
+W
R


% (e)
% no, different feature sets can choose different features as being most
% important


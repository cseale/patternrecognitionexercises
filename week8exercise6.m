a = mfeat_kar;

feature_sizes = [4 8 16 32 64];

err_feat = clevalf(a, qdc, feature_sizes, 1000);

figure;
plote(err_feat);


err_feat = clevalf(a, qdc, feature_sizes, 1600);

figure;
plote(err_feat);


err_feat = clevalf(a, qdc, feature_sizes, 800);

figure;
plote(err_feat);

% (a) We would expect slight variation at the mid-range values for feature
% sizes, as features are choosen randomly. Different features, different
% results.

% (b) Conclusion, curse of dimensionality. More features requires more data.
% Otherwise test error will increase.


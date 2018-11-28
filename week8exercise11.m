clear;
close all;

zer = mfeat_zer;
kar = mfeat_kar;

[zer_train, zer_test] = gendat(zer, 1400, 1);

w_zer = fisherc(zer_train);

confmat(zer_test*w_zer)


[kar_train, kar_test] = gendat(kar, 1400, 1);

w_kar = fisherc(kar_train);

confmat(kar_test*w_kar)
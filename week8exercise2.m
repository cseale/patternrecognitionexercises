% 8.2
clear;
close all;

% generate dataset
a = gendath([1000 1000]);

a = [a randn(2000, 60)];

train_set_sizes = [64 128 256 512];

err_nmc = cleval(a, nmc, train_set_sizes);
err_ldc = cleval(a, ldc, train_set_sizes);
err_qdc = cleval(a, qdc, train_set_sizes);

hold on;
plote(err_nmc, 'r');
plote(err_ldc, 'g');
plote(err_qdc, 'b');

% (a) At smaller number of samples, classifier performance greatly
% improves. As training sizes increase, subsequent increases in training
% size will see less improvement in error
% (b) Simplier classifiers perform better with less data than more complex
% classifiers, but with enough data a complex classifier will out-perform a
% simplier classifier
% (c) After the intersect, as the training sizes increase, the difference
% in performance in classifiers will increase to the maximum performance of
% the classifier


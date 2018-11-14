trn = gendatd([15 15], 30);
test = gendatd([1000 1000], 30);

for W = trn*{nmc, ldc, fisherc, loglc, svc}
    testc(test, W);
end

figure
a = mfeat_zer 
[trn,tst] = gendat(a,.04)
clsf = ldc
featnum = [1:5:47]
prwaitbar off
prwarning off
mf = max(featnum)
e0 = clevalf(trn,clsf,featnum,[],1,tst);
rp = randperm(size(a,2));
er = clevalf(trn(:,rp),clsf,featnum,[],1,tst(:,rp));
[w,r] = featseli(trn,'eucl-m',mf)
e1 = clevalf(trn*w,clsf,featnum,[],1,tst*w);
[w,r] = featself(trn,'eucl-m',mf)
e2 = clevalf(trn*w,clsf,featnum,[],1,tst*w);
[w,r] = featselb(trn,'eucl-m',mf)
e3 = clevalf(trn*w,clsf,featnum,[],1,tst*w);
figure
plote({e0,er,e1,e2,e3})
legend({'o','r','i','f','b'})
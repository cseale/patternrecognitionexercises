% week2-exercise2-8

for i = 1:8
a = prdataset(randn(5,2));
scatterd([-3 -3;3 3],'.w') % trick to set the figure axes about right
plotm(gaussm(a))
hold on
pause
end
hold of


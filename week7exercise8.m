train = gendatb([200 200]);

scatterd(train);
hold on;

colors = ["magenta" "green" "red" "cyan"];

for i = [1, 10, 100, 1000]
    w = adaboostc(train,stumpc,i,[],0);
    plotc(w, string(colors(log10(i)+1)));
end

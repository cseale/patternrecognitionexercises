% 8(a)

t = gendath([500 500]);

for i = 1:30
    a = gendath([20 20]); t*ldc(a)*testc
end
% dataset trained on small dataset which changes every time -> larger
% variation in data


% 8(b)

a = gendath([20 20]);
w = ldc(a);

for i = 1:30
    t = gendath([500 500]); t*w*testc
end
% reduce variation caused by larger test set, the error more correctly
% converges to an more consistent value


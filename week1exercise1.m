% author: Colm Seale
% course: IN4085 - Pattern Recognition
% exercise 1.2.1

% 1.6

x1 = [
    0.2, 0.3, 0.4;
    1, 1, 0.3;
    0, 0, 0;
    0.4, 0.5, 0.6;
    0.9, 0.9, 0.1;
    0.7, 0.8, 0.2;
    0, 1, 0.5;
    0, 1, 0.3;
    0, 0.4, 0.2;
    0.5, 0.6, 0.5
    ]

mu_col = mean(x1)
mu_row = mean(x1') % transpose of mu
rho1 = std(x1)

% 1.7

plot(x1(:,1),x1(:,2),'b*');


% 1.8

labels1 = ['1';'2';'1';'1';'2';'2';'1';'1';'1';'2']

a1 = prdataset(x1,labels1)

% 1.9

b1 = boomerangs(10)

scatterd(b1)
scatterd(b1(:, [2,3])); % features 2,3
scatterd(b1, 3) % 3D
scatterd(b1, 'legend'); % with legend


% exercise 1.2.2

% 1.10

% 11kHz, 11,000 cycles per second, 5 seconds, 55,000 data points
% Each speaker is an object, with a labeled dataset
% perhaps we need to use a sliding window and create features at each
% window point, after that, we need to decide on the appropriate algorithm
% in order to classify the sequence. Do we need some form of memory or is
% each sample taken in isolation


% exercise 1.2.3

% 1.11
obj = kimia_images
x = im_features(obj,obj,{'Area','Perimeter','Eccentricity'});
+x


featset = seldat(x, [3,16])
featset = double(featset)

a = kimia_images
b = seldat(a, [3,16]) % select 3 classes and 16
show(b)

c = data2im(b, 13) % select image 13
figure;
imagesc(c); % show the image
colormap gray % apply gray colormap

scatterd(x, 'legend')


% 1.12

delfigs
obj1 = kimia_images
obj1 = seldat(obj1, [3:3:18]);
figure(1);
show(obj1);
% put in square box
obj2 = im_box(obj1, 0, 1)
figure(2);
show(obj2);
% rotate to same orientation
obj3 = im_rotate(obj2);
figure(3);
show(obj3);
% resize to 20x20 pixels
obj4 = im_resize(obj3, [30, 30]);
figure(4);
show(obj4);
% put in another square box
obj5 = im_box(obj4, 1, 0);
figure(5);
show(obj5);

showfigs

help('im_rotate')

struct(obj1)

% 1.13

obj = seldat(obj5, 2) % just use 2 class
figure(1) % show data
show(obj)
mean_set2 = im_mean(obj)  % measure (x,y) of centers of gravity
mean_data = double(mean_set2) % convert them (unpack)

hist(mean_data)
scatterd(mean_data); hold on;


obj = seldat(obj5, 3) % use 3 class
mean_set2 = im_mean(obj)  % measure (x,y) of centers of gravity
mean_data2 = double(mean_set2) % convert them (unpack)

scatterd(mean_data2)








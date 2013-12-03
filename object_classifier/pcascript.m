rsize = 10;
fmat = zeros(12*50,(2*rsize+1)*(2*rsize+1)*3);
i=1;
%im1 = im2double(imread('objects/apple2.jpg'));
%points = importdata('points/apple.mat');
%fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
%i = i+1;

%im1 = im2double(imread('objects/banana2.jpg'));
%points = importdata('points/banana.mat');
%fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
%i = i+1;

im1 = im2double(imread('objects/bob2.jpg'));
points = importdata('points/bob.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/bow2.jpg'));
points = importdata('points/bow.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/chess2.jpg'));
points = importdata('points/chess.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/coke2.jpg'));
points = importdata('points/coke.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/cup2.jpg'));
points = importdata('points/cup.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/hot2.jpg'));
points = importdata('points/hot.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/khat2.jpg'));
points = importdata('points/khat.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/mug2.jpg'));
points = importdata('points/mug.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/pabst2.jpg'));
points = importdata('points/pabst.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/shoe2.jpg'));
points = importdata('points/shoe.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/sun2.jpg'));
points = importdata('points/sun.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;

im1 = im2double(imread('objects/uhat2.jpg'));
points = importdata('points/uhat.mat');
fmat(((i-1)*50+1):(i*50),:) = toPCA(im1,points(1:50,:),rsize);
i = i+1;
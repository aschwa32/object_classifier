pcaset = importdata('pca/12nofruitnopolar.mat');
rsize=10;

im1 = im2double(imread('testobjects/tcoke1a.jpg'));
points = importdata('points/tcoke1.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcoke1 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tcoke2.jpg'));
points = importdata('points/tcoke2.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcoke2 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tcoke3.jpg'));
points = importdata('points/tcoke3.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcoke3 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tcoke4.jpg'));
points = importdata('points/tcoke4.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcoke4 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tcoke5.jpg'));
points = importdata('points/tcoke5.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcoke5 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tcup1.jpg'));
points = importdata('points/tcup1.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcup1 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tcup2.jpg'));
points = importdata('points/tcup2.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcup2 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tcup3.jpg'));
points = importdata('points/tcup3.mat');
a = toPCA(im1,points(1:50,:),rsize);
rcup3 = voter(pcaset,a);

im1 = im2double(imread('testobjects/thot1.jpg'));
points = importdata('points/thot1.mat');
a = toPCA(im1,points(1:50,:),rsize);
rhot1 = voter(pcaset,a);

im1 = im2double(imread('testobjects/thot2.jpg'));
points = importdata('points/thot2.mat');
a = toPCA(im1,points(1:50,:),rsize);
rhot2 = voter(pcaset,a);

im1 = im2double(imread('testobjects/thot3.jpg'));
points = importdata('points/thot3.mat');
a = toPCA(im1,points(1:50,:),rsize);
rhot3 = voter(pcaset,a);

im1 = im2double(imread('testobjects/thot4.jpg'));
points = importdata('points/thot4.mat');
a = toPCA(im1,points(1:50,:),rsize);
rhot4 = voter(pcaset,a);

im1 = im2double(imread('testobjects/thot5.jpg'));
points = importdata('points/thot5.mat');
a = toPCA(im1,points(1:50,:),rsize);
rhot5 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tkhat1.jpg'));
points = importdata('points/tkhat1.mat');
a = toPCA(im1,points(1:50,:),rsize);
rkhat1 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tkhat2.jpg'));
points = importdata('points/tkhat2.mat');
a = toPCA(im1,points(1:50,:),rsize);
rkhat2 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tkhat3.jpg'));
points = importdata('points/tkhat3.mat');
a = toPCA(im1,points(1:50,:),rsize);
rkhat3 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tkhat4.jpg'));
points = importdata('points/tkhat4.mat');
a = toPCA(im1,points(1:50,:),rsize);
rkhat4 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tkhat5.jpg'));
points = importdata('points/tkhat5.mat');
a = toPCA(im1,points(1:50,:),rsize);
rkhat5 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tshoe1.jpg'));
points = importdata('points/tshoe1.mat');
a = toPCA(im1,points(1:50,:),rsize);
rshoe1 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tshoe2.jpg'));
points = importdata('points/tshoe2.mat');
a = toPCA(im1,points(1:50,:),rsize);
rshoe2 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tshoe3.jpg'));
points = importdata('points/tshoe3.mat');
a = toPCA(im1,points(1:50,:),rsize);
rshoe3 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tshoe4.jpg'));
points = importdata('points/tshoe4.mat');
a = toPCA(im1,points(1:50,:),rsize);
rshoe4 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tshoe6.jpg'));
points = importdata('points/tshoe6.mat');
a = toPCA(im1,points(1:50,:),rsize);
rshoe6 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tshoe7.jpg'));
points = importdata('points/tshoe7.mat');
a = toPCA(im1,points(1:50,:),rsize);
rshoe7 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tuhat1.jpg'));
points = importdata('points/tuhat1.mat');
a = toPCA(im1,points(1:50,:),rsize);
ruhat1 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tuhat2.jpg'));
points = importdata('points/tuhat2.mat');
a = toPCA(im1,points(1:50,:),rsize);
ruhat2 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tuhat3.jpg'));
points = importdata('points/tuhat3.mat');
a = toPCA(im1,points(1:50,:),rsize);
ruhat3 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tuhat4.jpg'));
points = importdata('points/tuhat4.mat');
a = toPCA(im1,points(1:50,:),rsize);
ruhat4 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tuhat5.jpg'));
points = importdata('points/tuhat5.mat');
a = toPCA(im1,points(1:50,:),rsize);
ruhat5 = voter(pcaset,a);

im1 = im2double(imread('testobjects/tuhat6.jpg'));
points = importdata('points/tuhat6.mat');
a = toPCA(im1,points(1:50,:),rsize);
ruhat6 = voter(pcaset,a);
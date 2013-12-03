im1 = im2double(imread(imloc));
pointsd1 = findPointsNew(im1);
%48 overlap seems to work well
pointsd2 = filterPoints(pointsd1,10,im1, 200);
fim1 = showPoints(im1, pointsd2, 10);
imshow(fim1);
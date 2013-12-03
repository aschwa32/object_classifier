function [ outp ] = interesting( im, std )
si = size(im);
mean = [0 0 0];
for i = 1:3
mean(1,i) = sum(sum(im(:,:,i)))/(si(1,1)*si(1,2));
mean(1,i) = sum(sum(im(:,:,i)))/(si(1,1)*si(1,2));
mean(1,i) = sum(sum(im(:,:,i)))/(si(1,1)*si(1,2));
end
outp = 0;
dev = [0 0 0];
for k = 1:3
for i = 1:si(1,1)
for j = 1:si(1,2)
    dev(1,k) = dev(1,k) + (im(i,j,k) - mean(1,k))^2;
end
end
end
%try taking max deviation between three colors~50 seems good for max (std)
%could also try sums ~ 100 seems good for sum (std)
fd = max(dev);

if fd > std
    outp = 1;
end
end


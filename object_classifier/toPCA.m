function [ pset ] = toPCA( im, pts, rsize )
%takes in 50 points
%squarewindows
si = size(pts);
pset = zeros(si(1,1),(2*rsize+1)*(2*rsize+1)*3);
for i=1:50
    pset(i,:) = mathWindow(im((pts(i,1)-rsize):(pts(i,1)+rsize),(pts(i,2)-rsize):(pts(i,2)+rsize),:));
end


end


function [ im1 ] = showPoints( im1, pts, rSize )

si = size(pts);
imSize = size(im1);
for i = 1:si(1,1)
        ymax = pts(i,1) + rSize;
        ymin = pts(i,1) - rSize;
        xmax = pts(i,2) + rSize;
        xmin = pts(i,2) - rSize;
        if ymax > imSize(1,1)
            ymax = imSize(1,1);
        end
        if ymin < 1
            ymin = 1;
        end
        if xmax > imSize(1,2)
            xmax = imSize(1,2);
        end
        if xmin < 1
            xmin = 1;
        end
   im1(ymax,xmin:xmax,1) = 250;
   im1(ymax,xmin:xmax,2:3) = 0;
   im1(ymin,xmin:xmax,1) = 250;
   im1(ymin,xmin:xmax,2:3) = 0;
   im1((ymin+1):(ymax-1),xmin,1) = 250;
   im1((ymin+1):(ymax-1),xmin,2:3) = 0;
   im1((ymin+1):(ymax-1),xmax,1) = 250;
   im1((ymin+1):(ymax-1),xmax,2:3) = 0;
end


end


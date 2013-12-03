function [ oppoints ] = filterPoints( points, rSize, image, overlap )
    imSize = size(image);
    check = zeros(imSize);
    si = size(points);
    pointsize = 0;
    sdev = 80;
    %oppoints = zeros(pnum,2);
    %oppos = 1;
    while(pointsize(1,1)<50)
    oppoints = [];
    sdev = floor(sdev/2);
    for i = 1:si(1,1)
        ymax = points(i,3) + rSize;
        ymin = points(i,3) - rSize;
        xmax = points(i,4) + rSize;
        xmin = points(i,4) - rSize;
        if ymax > imSize(1,1)
            %ymax = imSize(1,1);
            continue
        end
        if ymin < 1
            %ymin = 1;
            continue
        end
        if xmax > imSize(1,2)
            %xmax = imSize(1,2);
            continue
        end
        if xmin < 1
            %xmin = 1;
            continue
        end
        %checking that the degree of overlap is fine and window is
        %interesting enough
        %if isempty(find(check(ymin:ymax,xmin:xmax), 1)) == 1
        %50 on snowlep ~ 22
        %40 on snowlep ~ >50
        %50 on church ~ 35
        %40 on church ~ 58
        %seems like 40 is the way to go, but need to make loop that checks
        %anyway
        if sum(sum(check(ymin:ymax,xmin:xmax)))<overlap
            if interesting(image(ymin:ymax,xmin:xmax,:),sdev) == 1
                check(ymin:ymax,xmin:xmax) = 1;
                oppoints = [oppoints;points(i,3:4)];
            end
        end
    end
    pointsize = size(oppoints);
    end
    
    




end
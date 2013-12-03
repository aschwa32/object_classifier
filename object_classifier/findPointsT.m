function [ pset] = findPointsT( im, pnum )

si = size(im);
symVals = zeros(si(1,1),si(1,2),si(1,3),2);

%for i=1:si(1,3)


    [dx dy] = gradientM(im(:,:,1));
    [R T] = gradientV(dx,dy);
    
%    for j = 2:(si(1,1)-1)
%       for k = 2:(si(1,2)-1)
          pset = makeSet(im(:,:,1), 5,3);
%          alphas = angles(pset);
%          d = dWeight(pset,1);
%          p = pWeight(pset,alphas,T);
%          c = pCont(pset,d,p,R);
%          symVals(50,60,1,:) = pMag(pset,c,T);
%       end
%    end
    
    
%end

%len = si(1,1)*si(1,2);
%vals = zeros(len,4);


%for i=1:si(1,1)
%    for j=1:si(1,2)
%        l = symVals(i,j,:,:);
%        csum = sum(symVals(i,j,:,1));
%        [row,col] = find(l == max(l(:,2)));
%        dir = l(row(1,1),2);
%        vals(((i-1)*si(1,2) + j), :) = [csum dir i j];
%    end
%end

%sortedVals = -sortrows(-vals);

%points = sortedVals(1:pnum,:);


end


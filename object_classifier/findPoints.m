function [ symVals] = findPoints( im)

si = size(im);
symVals = zeros(si(1,1),si(1,2),si(1,3),2);
sigma = si(1,1)^(1/2)/2;
for i=1:si(1,3)


    [dx dy] = gradientM(im(:,:,i));
    [R T] = gradientV(dx,dy);
    
    for j = 2:(si(1,1)-1)
       for k = 2:(si(1,2)-1)
          pset = makeSet(im(:,:,i), k,j);
          alphas = angles(pset);
          d = dWeight(pset,sigma);
          p = pWeight(pset,alphas,T);
          c = pCont(pset,d,p,R);
          symVals(j,k,i,:) = pMag(pset,c,T);
       end
    end
    
    
end




end


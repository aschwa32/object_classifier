function [ sortedVals ] = findPointsNew( im)
%doing windowsize of 40 here (will be 20 for final images)
wSize = 40;
si = size(im);
windows = floor(si/wSize);
symVals = zeros(si(1,1),si(1,2),si(1,3),2);

for i = 0:(windows(1,1)- 1)
    for j = 0:(windows(1,2) - 1)
        symVals((wSize*i + 1):(wSize*i+wSize),(wSize*j + 1):(wSize*j+wSize),:,:) = findPoints(im((wSize*i + 1):(wSize*i+wSize),(wSize*j + 1):(wSize*j+wSize),:));
    end
end

for i = 0:(windows(1,1)- 2)
    for j = 0:(windows(1,2) - 2)
         aWindow = findPoints(im((wSize*i + 1 +wSize/2):(wSize*i+3*wSize/2),(wSize*j + 1 + wSize/2):(wSize*j+3*wSize/2),:));
         for k = 1:wSize
             for l = 1:wSize
                 if max(symVals((wSize*i + k + wSize/2),(wSize*j + l + wSize/2),:,1)) < max(aWindow(k,l,:,1))
                     symVals((wSize*i + k + wSize/2),(wSize*j + l + wSize/2),:,:) = aWindow(k,l,:,:);
                 end
             end
         end
    end
end


len = si(1,1)*si(1,2);
vals = zeros(len,4);


for i=1:si(1,1)
    for j=1:si(1,2)
        %l = symVals(i,j,:,:);
        %called csum, but actually max
        csum = max(symVals(i,j,:,1));
        %[row,col] = find(l == max(l(:,2)));
        %dir = l(row(1,1),2);
        vals(((i-1)*si(1,2) + j), :) = [csum 0 i j];
    end
end

sortedVals = -sortrows(-vals);
sortedVals(:,1:2) = sortedVals(:,1:2)*10000;


end


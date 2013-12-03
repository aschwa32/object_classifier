function [ C ] = repNVals( C )
si = size(C);
for i=1:si(1,1)
   for j = 1:si(1,2)
      if isnan(C(i,j)) || isinf(C(i,j))
          C(i,j) = 0;
      end
   end
end


end


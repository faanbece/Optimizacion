function route = Route( pop, tam )
%LAB_ROUTE Summary of this function goes here
%   Detailed explanation goes here
    r=randperm(tam);
    for i=1:(numel(pop))
        if (isequal(pop(i).Route,r)) 
            r=randperm(tam);
            i=1;
        end
    end
    route=r.';
end


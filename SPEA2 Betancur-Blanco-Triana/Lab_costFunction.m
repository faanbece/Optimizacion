function cost = Lab_costFunction( route,distances,times )
%LAB_COSTFUNCTION Summary of this function goes here
%   Detailed explanation goes here

%LAB_ROUTE Summary of this function goes here
%   Detailed explanation goes here
    sumD=0;
    sumT=0;
    
    for i=1:(numel(route)-1)
        sumD=sumD+distances(route(i),route(i+1));
        sumT=sumT+times(route(i),route(i+1));
    end
    
    sumD=sumD+distances(route(numel(route)-1),route(1));
    sumT=sumT+times(route(numel(route)-1),route(1));
    
    cost=[sumD
        sumT];
end

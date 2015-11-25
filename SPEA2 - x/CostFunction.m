function cost = CostFunction( route,distances,times )
%LAB_COSTFUNCTION Summary of this function goes here
%   Detailed explanation goes here

%LAB_ROUTE Summary of this function goes here
%   Detailed explanation goes here
    sumD=0;
    sumT=0;
    lim=numel(route);
    for i=1:(lim-1)
        a=mod(route(i),lim)+1;  
        b=mod(route(i+1),lim)+1;
       
        sumD=sumD+distances(a,b);
        sumT=sumT+times(a,b);
    end
     a=mod(route(numel(route)),lim)+1;  
     b=mod(route(1),lim)+1;
     
    sumD=sumD+distances(a,b);
    sumT=sumT+times(a,b);
    
    cost=[sumD
        sumT];
end

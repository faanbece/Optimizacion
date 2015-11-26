probs=5;
iter=10;

minD=zeros(1,iter);
maxT=zeros(1,iter);
minD=zeros(1,iter);
maxT=zeros(1,iter);

meaD=zeros(1,iter);
meaT=zeros(1,iter);
stdD=0;
stdT=0;
vecMeaD=zeros(probs,5);
vecMeaT=zeros(probs,5);
for i=1:probs
    for j=1:iter
        disp(['Iteration ',  num2str(j)]);
        s=spea2(i*20,15,1,99,100);
       
        minD(j)=s(1);
        maxD(j)=s(2);
        meaD(j)=s(4);
        
        minT(j)=s(5);
        maxD(j)=s(7);
        meaT(j)=s(8);
    end
    vecMeaD(i,:)=[i*20 min(minD) max(maxD) mean(meaD) std(meaD)];
    vecMeaT(i,:)=[i*20 min(minT) max(maxT) mean(meaT) std(meaT)];    
end
csvwrite('spea_D.csv' ,vecMeaD);
csvwrite('spea_T.csv' ,vecMeaT);    
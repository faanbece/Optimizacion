probs=1;
iter=1;
%%minD=zeros(1,iter);
%%maxD=zeros(1,iter);
meaD=zeros(1,iter);
%%minT=zeros(1,iter);
%%maxT=zeros(1,iter);
meaT=zeros(1,iter);

tick=zeros(1,iter);
stdD=0;
stdT=0;
vecMeaD=zeros(probs,4);
vecMeaT=zeros(probs,4);
for i=1:probs
    for j=1:iter
        disp(['Iteration ',  num2str(j)]);
        s=spea2(i*20,30,1,99,75);
       % minD(j)=s(1);
       % maxD(j)=s(2);
        meaD(j)=s(4);
        
        %minT(j)=s(5);
        %maxD(j)=s(7);
        meaT(j)=s(8);
        
        tick(j)=s(9);
    end
    %%vecMeaD(i,:)=[i*20 min(minD) max(maxD(1,:)) mean(meaD) std(meaD) mean(tick)];
    %%vecMeaT(i,:)=[i*20 min(minT) max(maxT(1,:)) mean(meaT) std(meaT) mean(tick)];    
    vecMeaD(i,:)=[i*20 mean(meaD) std(meaD) mean(tick)];
    vecMeaT(i,:)=[i*20 mean(meaT) std(meaT) mean(tick)];    
end
csvwrite('spea_D.csv' ,vecMeaD);
csvwrite('spea_T.csv' ,vecMeaT);    
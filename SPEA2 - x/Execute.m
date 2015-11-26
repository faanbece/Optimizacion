

iter=1;
stdD=zeros(iter);
stdT=zeros(iter);
meaD=zeros(iter);
meaT=zeros(iter);
stdD=0;
stdT=0;
vecMeaD=zeros(iter);
vecMeaT=zeros(iter);
vecStdD=zeros(iter);
vecStdT=zeros(iter);
for i=1:1   
    for j=1:iter
        disp(['Iteration ',  num2str(j)]);
        disp(['Nodes: ',  num2str(i*20)]);
        s=spea2(50,50,1,99,100);
        %minD=[minD s(1)];
        %maxD=[maxD s(2)];
        disp(['stdD: ',  num2str(s(3))]);
        stdD(j)=s(3);
        disp(['meanD: ',  num2str(s(4))]);
        meaD(j)=s(4);       
        %minT=[minT s(5)];
        %maxT=[maxT s(6)];
        disp(['stdT: ', num2str(s(7))]);
        stdT(j)=s(7);
        disp(['meanD: ',  num2str(s(8))]);
        meaT(j)=s(8);
    end
    vecMeaD=mean(meaD);
    vecMeaT=mean(meaT);
    vecStdD=std(meaD);
    vecStdT=std(meaT);
end
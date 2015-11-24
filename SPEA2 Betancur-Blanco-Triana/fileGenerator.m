%%for i=1:10
    tam=5;
    m = randi([1 99],tam,tam)
    csvwrite(strcat(int2str(tam),'x',int2str(tam),'distances','.csv'),m)
    csvwrite(strcat(int2str(tam),'x',int2str(tam),'times','.csv'),m)
    %%M = csvread('csvlist.csv')
%%end




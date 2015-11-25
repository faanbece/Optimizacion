for i=1:10
    tam=i*10;
    m = randi([1 99],tam,tam)
    csvwrite(strcat(int2str(tam),'x',int2str(tam),'distances','.csv'),m)
    m = randi([1 99],tam,tam)
    csvwrite(strcat(int2str(tam),'x',int2str(tam),'times','.csv'),m)
    %%M = csvread('csvlist.csv')
end

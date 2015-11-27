function PlotCosts(PF)
    hFig=figure(1);
    PFC=[PF.Cost];
    %%pl1=[PFC(1,:),PFC(2,:)];
    plot(PFC(1,:),PFC(2,:),'.');
    %plot(sort(PFC(1,:)),sort(PFC(2,:)));
    xlabel('1^{st} Objectivo (Distancia) ');
    ylabel('2^{nd} Objectivo (Tiempo) ');
    grid on;   
    axis([0 1500 0 1500])
    set(hFig, 'Position', [0 0 800 800])
      
end
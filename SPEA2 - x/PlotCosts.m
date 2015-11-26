function PlotCosts(PF)
    PFC=[PF.Cost];
    plot(PFC(1,:),PFC(2,:),'x');
    xlabel('1^{st} Objectivo (Distancia) ');
    ylabel('2^{nd} Objectivo (Tiempo) ');
    grid on;    
end
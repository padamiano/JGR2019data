clear all;


    filename2 = 'Fig1';

    load('Fig1_data','LL','tt','xx','zz','val','ex','ez');

    
    figure(1)
    
    set(gcf,'PaperPosition',[0.1, 0.1, 9, 5])

    
    
    subplot(1,2,1)
    contourf(LL,tt,val*690,100,'linestyle','none');%colorbar;
    set(gca, 'position', [0.11,0.15,0.15,0.725]);
    set(gca, 'fontsize', 16);
    set(gca, 'xlim', [8.9,10.1], 'ylim', [-66,66]);
    xlabel('L-shell','fontsize', 18);
    ylabel('magnetic latitude (\circ)','fontsize', 18);
    text(9, 55, '(a)', 'fontsize', 22); 
    
    subplot(1,2,2)
    contourf(xx,zz,val*690,100,'linestyle','none');colorbar;
    set(gca, 'fontsize', 16);
    set(gca, 'position', [0.325,0.15,0.6,0.725]);
    axis equal;
    set(gca, 'xlim', [0,10.5], 'ylim', [-4,4]);
    xlabel('x (R_E)','fontsize', 18);
    ylabel('z (R_E)','fontsize', 18);
    hold on
    plot(ex,ez,'k')
    hold off
    text(0.25, 3.4, '(b)', 'fontsize', 22); 
    title('Radial Velocity Profile (km/s)', 'fontsize', 20);
    
    x = [0.77, 0.73];
    y = [0.71, 0.78];
    annotation('arrow',x,y,'linewidth', 1.2)
    
    x = [0.77, 0.73];
    y = [0.71, 0.635];
    annotation('arrow',x,y,'linewidth', 1.2)
	
%     x = [0.361, 0.77];
%     y = [0.51, 0.71];
%     annotation('arrow',x,y,'headstyle','vback3','linestyle','--')
%     
    hold on
    plot(8.1, 2.2, 'ko','markersize',15);
    plot(8.1, 2.2, 'k.','markersize',22);
    plot([0,8.1],[0,2.2], 'k--');
    hold off
    
    text(7.1, 1.15, 'x_2', 'fontsize', 15);
    text(6.8, 3.00, 'x_1', 'fontsize', 15);
    text(8.4, 1.90, 'x_3', 'fontsize', 15);
    text(4.0, 0.85, 'r', 'fontsize', 15);
    text(0.1, 0.30, '\theta', 'fontsize', 15);
    
    
    print('-depsc', filename2);
    saveas(gcf, filename2, 'png');
    saveas(gcf, filename2, 'pdf');
 





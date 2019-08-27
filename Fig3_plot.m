clear all;

 

load('Fig3_data', 't_Te050','j_Te050','t_Te200','j_Te200','t_Te400','j_Te400');

 

filename0 = ['Fig3'];

set(gcf,'PaperPosition',[0.1, 0.1, 5.75, 5])
subplot(111)
figure(1)
plot( t_Te050,j_Te050,t_Te200,j_Te200,  'linewidth',2);
hold on
plot(t_Te400,j_Te400,'color',[0.2 0.7 0], 'linewidth',2);
plot([max(t_Te400), max(t_Te400)],[-1.25,0.2],'k--');
hold off
set(gca, 'fontsize', 17);
set(gca, 'xlim', [30,70]);
set(gca, 'ylim',[-1.4,0.2]);
ylabel('j_{||} (\mu A / m^2)', 'fontsize', 22);
xlabel('magnetic latitude (\circ)', 'fontsize',22);
h=legend('T_e = 50', 'T_e = 200', 'T_e = 400');
set(h, 'location','southwest','box', 'off', 'fontsize',18);
text(65.5, -0.75, 'Ionosphere', 'rotation', 90, 'fontsize', 17);
title('t = 0.15 T_A', 'fontsize', 23);

 
saveas(gcf, filename0, 'png');
saveas(gcf, filename0, 'epsc');
saveas(gcf, filename0, 'pdf');






clear all

load('Fig9_data', 't050', 'Tu2050', 't050', 'Tb2050', 'Te2050', ...
                  't150', 'Tu2150', 't150', 'Tb2150', 'Te2150', ...
                  't250', 'Tu2250', 't250', 'Tb2250', 'Te2250');

              
xx = [ 0.025, 0.05, 0.1, 0.175, 0.25];




figure(2)

set(gcf,'PaperPosition',[0.1, 0.1, 9, 4])
colormap(jet)


subplot(131)
plot(t050, Tu2050, t050, Tb2050, 'linewidth', 2)
hold on
plot(t050, Te2050, 'color', [0.2,0.7,0],'linewidth', 2)
for ii=1:5
   plot([xx(ii), xx(ii)], [0, 1.35],'linestyle', '--', 'color', [0.5,0.5,0.5]); 
end
hold off
set(gca, 'xlim', [0,0.26], 'ylim', [0,1.35], 'fontsize', 15);
title('(a) m = 50', 'fontsize', 18);
ylabel('Energy', 'fontsize', 18);
xlabel('t (T_A)', 'fontsize', 18);
set(gca, 'position', [0.12,0.19,0.27, 0.7]); 


subplot(132)
plot(t150, Tu2150, t150, Tb2150, 'linewidth', 2); 
hold on
plot(t150, Te2150, 'color', [0.2,0.7,0],'linewidth', 2)
for ii=1:5
   plot([xx(ii), xx(ii)], [0, 1.35],'linestyle', '--', 'color', [0.5,0.5,0.5]); 
end
hold off
set(gca, 'xlim', [0,0.26], 'ylim', [0,1.35],'yticklabel','', 'fontsize', 15);
title('(b) m = 150', 'fontsize', 18); 
xlabel('t (T_A)', 'fontsize', 18);
set(gca, 'position', [0.40,0.19,0.27, 0.7]);
h = legend('u_2', 'b_2', 'e^- (precipitated)');
set(h, 'location', 'west', 'box','off'); 

              
subplot(133)
plot(t250, Tu2250, t250, Tb2250, 'linewidth', 2); 
hold on
plot(t250, Te2250, 'color', [0.2,0.7,0],'linewidth', 2)
for ii=1:5
   plot([xx(ii), xx(ii)], [0, 1.35],'linestyle', '--', 'color', [0.5,0.5,0.5]); 
end
hold off
set(gca,'xlim', [0,0.26], 'ylim', [0,1.35]);
set(gca,'yticklabel',''); 
set(gca,'fontsize', 15);
title('(c) m = 250', 'fontsize', 18); 
xlabel('t (T_A)', 'fontsize', 18);
set(gca, 'position', [0.68,0.19,0.27, 0.7]);


saveas(gcf, 'Fig9', 'epsc');
saveas(gcf, 'Fig9', 'pdf');
saveas(gcf, 'Fig9', 'png');





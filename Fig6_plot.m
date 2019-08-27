clear all

        
load('Fig6_data','t250050','Tu2250050','t250050','Tb2250050','Te2250050', ...
                 't250200','Tu2250200','t250200','Tb2250200','Te2250200', ...
                 't250400','Tu2250400','t250400','Tb2250400','Te2250400')
      
             
colormap(jet)


xx = [ 0.025, 0.05, 0.1, 0.15, 0.2];

figure(2)

set(gcf,'PaperPosition',[0.1, 0.1, 9, 4])

     
subplot(131)
plot(t250050, Tu2250050, t250050, Tb2250050, 'linewidth', 2)
hold on
plot(t250050, Te2250050, 'color', [0.2,0.7,0],'linewidth', 2)
for ii=1:5
   plot([xx(ii), xx(ii)], [0, 1.35],'linestyle', '--', 'color', [0.5,0.5,0.5]); 
end
hold off
set(gca, 'xlim', [0,0.25], 'ylim', [0,1.35], 'fontsize', 15);
title('(a) T_e = 50 eV', 'fontsize', 18);
ylabel('Energy', 'fontsize', 18);
xlabel('t (T_A)', 'fontsize', 18);
set(gca, 'position', [0.12,0.19,0.27, 0.7]);
h = legend('u_2', 'b_2', 'e^- (precipitated)');
set(h, 'location', 'west', 'box','off');


subplot(132)
plot(t250200, Tu2250200, t250200, Tb2250200, 'linewidth', 2);%, t250200, Tu2250200)
hold on
plot(t250200, Te2250200, 'color', [0.2,0.7,0],'linewidth', 2)
for ii=1:5
   plot([xx(ii), xx(ii)], [0, 1.35],'linestyle', '--', 'color', [0.5,0.5,0.5]); 
end
hold off
set(gca, 'xlim', [0,0.25], 'ylim', [0,1.35],'yticklabel','', 'fontsize', 15);
title('(b) T_e = 200 eV', 'fontsize', 18);
xlabel('t (T_A)', 'fontsize', 18);
set(gca, 'position', [0.40,0.19,0.27, 0.7]);

  
subplot(133)
plot(t250400, Tu2250400, t250400, Tb2250400, 'linewidth', 2);%, t250200, Tu2250200)
hold on
plot(t250400, Te2250400, 'color', [0.2,0.7,0],'linewidth', 2)
for ii=1:5
   plot([xx(ii), xx(ii)], [0, 1.35],'linestyle', '--', 'color', [0.5,0.5,0.5]); 
end
hold off
set(gca, 'xlim', [0,0.25], 'ylim', [0,1.35],'yticklabel','', 'fontsize', 15);
title('(c) T_e = 400 eV', 'fontsize', 18);
xlabel('t (T_A)', 'fontsize', 18);
set(gca, 'position', [0.68,0.19,0.27, 0.7]);


saveas(gcf, 'Fig6', 'pdf');
saveas(gcf, 'Fig6', 'epsc');
saveas(gcf, 'Fig6', 'png');
 



 
clear all;

n=8;


load('Fig2_data', 'x_Te050','j_Te050','x_Te200','j_Te200','x_Te400','j_Te400');

x11 = x_Te050;
j11 = j_Te050;
x22 = x_Te200;
j22 = j_Te200;
x33 = x_Te400;
j33 = j_Te400;

filename0 = ['Fig2'];
set(gcf,'PaperPosition',[0.1, 0.1, 8.5, 5])

lb = [0.2 0.2 0.5];

subplot(155)
plot(1./x11, j11(32,:), 'linewidth', 1.5)
hold on
plot(1./x22, j22(32,:), 'linewidth', 1.5)
plot(1./x33, j33(32,:), 'color',[0.2,0.7,0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1.4, 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.2 T_A', 'fontsize', 15);
text(9.58, 0.33, '(e)', 'fontsize',20); 
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.82, 0.15, 0.16, 0.7]) 

subplot(154)
plot(1./x11, j11(24,:),  1./x22, j22(24,:), 'linewidth', 1.5)
hold on
plot(1./x33, j33(24,:),'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1.4, 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.15 T_A', 'fontsize', 15);
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.65, 0.15, 0.16, 0.7]) 
text(9.58, 0.33, '(d)', 'fontsize',20); 

subplot(153)
plot(1./x11, j11(16,:),1./x22, j22(16,:),  'linewidth', 1.5)
hold on
plot(1./x33, j33(16,:), 'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1.4, 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.1 T_A', 'fontsize', 15);
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.48, 0.15, 0.16, 0.7]) 
text(9.58, 0.33, '(c)', 'fontsize',20); 


subplot(152)
plot(1./x11, j11(8,:),  1./x22, j22(8,:),  1./x33, j33(8,:),  'linewidth', 1.5)
hold on
plot(1./x33, j33(8,:),   'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1.4, 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.05 T_A', 'fontsize', 15);
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.31, 0.15, 0.16, 0.7]) 
text(9.58, 0.33, '(b)', 'fontsize',20); 


subplot(151)
plot(1./x11, j11(4,:), 'linewidth', 1.5)
hold on
plot( 1./x22, j22(4,:),  'linewidth', 1.5)
plot( 1./x33, j33(4,:),  'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1.4, 0.1]);
title('t = 0.025 T_A', 'fontsize', 15);
grid on
xlabel('L', 'fontsize', 15);
ylabel('j_{||} (\mu A / m^2)', 'fontsize', 16);
set(gca, 'position', [0.14, 0.15, 0.16, 0.7]) 
h=legend('T_e = 50','T_e = 200','T_e = 400')
set(h, 'location','southwest', 'fontsize',14);
text(9.58, 0.33, '(a)', 'fontsize',20); 


saveas(gcf, filename0, 'png');
saveas(gcf, filename0, 'pdf');
saveas(gcf, filename0, 'epsc');



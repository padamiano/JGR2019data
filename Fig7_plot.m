clear all;

load('Fig7_data','j_m050','x_m050','t_m050','j_m150','x_m150','t_m150','j_m250','x_m250','t_m250');

x11 = x_m050;
j11 = j_m050;
t11 = t_m050;

x22 = x_m150;
j22 = j_m150;
t22 = t_m150;

x33 = x_m250;
j33 = j_m250;
t33 = t_m250;


filename0 = ['Fig7'];
set(gcf,'PaperPosition',[0.1, 0.1, 8.5, 5])


lb = [0.2 0.2 0.5];

ii=40;
subplot(155)
plot(1./x11, j11(ii,:), 'linewidth', 1.5)
hold on 
plot(1./x22, j22(ii,:), 'linewidth', 1.5)
plot(1./x33, j33(ii,:), 'color',[0.2,0.7,0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1., 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.25 T_A', 'fontsize', 15);
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.82, 0.15, 0.16, 0.7]) 
text(9.58, 0.28, '(e)', 'fontsize',20); 


ii=28;
subplot(154)
plot(1./x11, j11(ii,:),  1./x22, j22(ii,:), 'linewidth', 1.5)
hold on
plot(1./x33, j33(ii,:),'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1., 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.175 T_A', 'fontsize', 15);
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.65, 0.15, 0.16, 0.7]) 
text(9.58, 0.28, '(d)', 'fontsize',20); 


ii=16;
subplot(153)
plot(1./x11, j11(ii,:),1./x22, j22(ii,:),  'linewidth', 1.5)
hold on
plot(1./x33, j33(ii,:), 'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1., 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.1 T_A', 'fontsize', 15);
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.48, 0.15, 0.16, 0.7]) 
text(9.58, 0.28, '(c)', 'fontsize',20); 

subplot(152)
plot(1./x11, j11(8,:),  1./x22, j22(8,:),  'linewidth', 1.5)
hold on
plot(1./x33, j33(8,:),   'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1., 0.1]);
grid on
set(gca, 'yticklabel','');
title('t = 0.05 T_A', 'fontsize', 15);
xlabel('L', 'fontsize', 15);
set(gca, 'position', [0.31, 0.15, 0.16, 0.7]) 
text(9.58, 0.28, '(b)', 'fontsize',20); 

subplot(151)
plot(1./x11, j11(4,:), 'linewidth', 1.5)
hold on
plot( 1./x22, j22(4,:),  'linewidth', 1.5)
plot( 1./x33, j33(4,:),  'color', [0.2 0.7 0], 'linewidth', 1.5)
hold off
set(gca, 'fontsize', 15);
set(gca, 'xlim', [9.42,9.85], 'ylim', [-1., 0.1]);
title('t = 0.025 T_A', 'fontsize', 15);
grid on
xlabel('L', 'fontsize', 15);
ylabel('j_{||} (\mu A / m^2)', 'fontsize', 16);
set(gca, 'position', [0.14, 0.15, 0.16, 0.7]) 
h=legend('m = 50','m = 150','m = 250')
set(h, 'location','southwest', 'fontsize',14);
text(9.58, 0.287, '(a)', 'fontsize',20); 


saveas(gcf, filename0, 'pdf');
saveas(gcf, filename0, 'epsc');
saveas(gcf, filename0, 'png');


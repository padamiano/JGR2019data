clear all;


filename0 = 'Fig4';
load('Fig4_data','v_perp','v_para', 'f_Te050', 'f_Te200', 'f_Te400');

angle = 0:1:360;
ax = cos(angle * pi ./ 180);
ay = sin(angle * pi ./ 180);

maxx =25;
 
set(gcf,'PaperPosition',[0.1, 0.1, 8, 5.5])

figure(2)

subplot(131)

[c,hh] = contour(v_perp, v_para, f_Te050, 10);
set(hh,'linewidth',1.2);
set(gca, 'fontsize', 15);
hold on
plot(ax*10,ay*10,'k:');
plot(ax*5,ay*5,'k:');
plot(ax*15,ay*15,'k:');
plot(ax*20,ay*20,'k:');
plot(ax*25,ay*25,'k:');
plot([0,maxx],[0,0],'k:');
hold off
xlabel('|v_{\perp}| (10^6 m/s)', 'fontsize', 17);
ylabel('v_{||} (10^6 m/s)', 'fontsize', 17);
axis equal; %grid on;
set(gca, 'xlim', [0,maxx]);
set(gca, 'ylim', [-maxx,maxx]);
set(gca, 'position', [0.12,0.12,0.25, 0.8]);
title('(a) T_e = 50 eV','fontsize',20);

subplot(132)
[c,hh] = contour(v_perp, v_para, f_Te200, 10);
set(hh,'linewidth',1.2);
set(gca, 'fontsize', 15);
hold on
plot(ax*10,ay*10,'k:');
plot(ax*5,ay*5,'k:');
plot(ax*15,ay*15,'k:');
plot(ax*20,ay*20,'k:');
plot(ax*25,ay*25,'k:');
plot([0,maxx],[0,0],'k:');
hold off
xlabel('|v_{\perp}| (10^6 m/s)', 'fontsize', 17);
%ylabel('v_{||} (10^6 m/s)');
axis equal; %grid on;
set(gca, 'xlim', [0,maxx]);
set(gca, 'ylim', [-maxx,maxx]);
set(gca, 'yticklabel', '');
set(gca, 'position', [0.41,0.12,0.25, 0.8]);
title('(b) T_e = 200 eV','fontsize',20);


subplot(133)
[c,hh] = contour(v_perp, v_para, f_Te400, 10);
set(hh,'linewidth',1.2);
set(gca, 'fontsize', 15);
hold on
plot(ax*10,ay*10,'k:');
plot(ax*5,ay*5,'k:');
plot(ax*15,ay*15,'k:');
plot(ax*20,ay*20,'k:');
plot(ax*25,ay*25,'k:');
plot([0,maxx],[0,0],'k:');
hold off
xlabel('|v_{\perp}| (10^6 m/s)', 'fontsize', 17);
%ylabel('v_{||} (10^6 m/s)');
axis equal; %grid on;
set(gca, 'xlim', [0,maxx]);
set(gca, 'ylim', [-maxx,maxx]);
set(gca, 'yticklabel', '');
set(gca, 'position', [0.7,0.12,0.25, 0.8]);
title('(c) T_e = 400 eV','fontsize',20);



saveas(gcf, filename0, 'pdf');
saveas(gcf, filename0, 'epsc');
saveas(gcf, filename0, 'png');
 
time4 = killcrank.time;
Engine_Kill = killcrank.data(:,1);
Engine_Crank = killcrank.data(:,2);
engineblendfactor = killcrank.data(:,3);
motorblendfactor = killcrank.data(:,4);
drive_mode = killcrank.data(:,5);
e_state = killcrank.data(:,6);
crankswitch = killcrank.data(:,7);
figure(1);
% engine kill
subplot(5,1,1);
plot(time4, Engine_Kill,'r');
title('Engine Kill');
xlabel('Time');
ylabel('Engine Kill');
ylim([0 1]);
xlim([ 0 100]);
grid;
% Crank
subplot(5,1,2);
plot(time4, Engine_Crank,'b');
title('Crank Switch');
xlabel('Time');
ylabel('Engine Crank');
ylim([0 1.1]);
xlim([ 0 100]);
grid;
% engine blend
subplot(5,1,3);
plot(time4, engineblendfactor,'c');
title('Engine Blend Factor');
xlabel('Time');
ylabel('Engine Blend Factor');
ylim([0 1]);
xlim([ 0 100]);
grid;
%plot mblend
subplot(5,1,4);
plot(time4,motorblendfactor,'b');
hold on
plot(time4, e_state, 'c');
title('Motor Blend Factor & Engine State');
xlabel('Time');
ylabel('Motor Blend Factor');
ylim([0 5]);
xlim([ 0 100]);
legend('Motor Blend Factor', 'Engine State');
grid;
%plot for m
subplot(5,1,5);
plot(time4,drive_mode,'m');
hold on
plot(time4, crankswitch, 'k');
title('Drive Mode & Crank Switch');
xlabel('Time');
ylabel('Mode');
ylim([0 4.5]);
xlim([0 100]);
legend('Drive Mode', 'Crank Switch');
grid;
%plot engine state

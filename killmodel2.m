time4 = killcrank.time;
Engine_Kill = killcrank.data(:,1);
Engine_Crank = killcrank.data(:,2);
engineblendfactor = killcrank.data(:,3);
drive_mode = killcrank.data(:,4);
e_state = killcrank.data(:,5);
crankswitch = killcrank.data(:,6);
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
%plot for m
subplot(5,1,4);
plot(time4,drive_mode,'m');
title('Drive Mode');
xlabel('Time');
ylabel('Mode');
ylim([0 4.5]);
xlim([0 100]);
grid;
%plot engine state
subplot(5,1,5);
plot(time4,e_state,'m');
hold on
plot(time4, crankswitch, 'b'); 
title('Engine State & Crank Switch');
xlabel('Time');
ylim([0 4.5]);
xlim([0 100]);
legend('Engine State', 'Crank Switch');
grid;
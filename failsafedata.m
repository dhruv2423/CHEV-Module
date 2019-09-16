time7 = failsafe.time;
F_Switch = failsafe.data(:,1);
R_Switch = failsafe.data(:,2);
Motor_Kill = failsafe.data(:,3);
autocr = failsafe.data(:,4);
stateofc = failsafe.data(:,5);
d_mode = failsafe.data(:,6);
figure(1);
% f switch
subplot(5,1,1);
plot(time7, F_Switch,'r');
title('Forward');
xlabel('Time');
ylabel('Forward');
ylim([-0.1 1.1]);
xlim([ 0 100]);
grid;
% r
subplot(5,1,2);
plot(time7, R_Switch,'b');
title('Reverse Switch');
xlabel('Time');
ylabel('Reverse');
ylim([-0.1 1.1]);
xlim([ 0 100]);
grid;
% f
subplot(5,1,3);
plot(time7, Motor_Kill,'k');
title('Motor Kill');
xlabel('Time');
ylabel('Motor Kill');
ylim([-0.1 1.1]);
xlim([ 0 100]);
grid;
%plot 
subplot(5,1,4);
plot(time7,autocr,'m');
title('Autocrank Signal');
xlabel('Time');
ylabel('Autocrank');
ylim([-0.1 1.1]);
xlim([0 100]);
grid;
%plot engine state
subplot(5,1,5);
plot(time7,stateofc,'m');
hold on
plot(time7, d_mode, 'b'); 
title('SOC and Drive Mode');
xlabel('Time');
ylim([0 4.5]);
xlim([0 100]);
legend('SOC', 'Dive Mode');
grid;
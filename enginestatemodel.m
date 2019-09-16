time8 = blendcontrol.time;
originalblend = blendcontrol.data(:,1);
origmotorblend = blendcontrol.data(:,2);
v_speed = blendcontrol.data(:,3);
A_PP = blendcontrol.data(:,4);
modeblend = blendcontrol.data(:,5);
modmblend = blendcontrol.data(:,6);
figure(1);
% state sub plot
subplot(5,1,1);
plot(time8, originalblend,'r');
hold on
plot(time8, modeblend, 'v');
title('Modified and Original Engine Blend Factors');
xlabel('Time');
ylim([-0.1 1.1]);
xlim([ 0 100]);
legend('Original Engine Blend Factor', 'Modified Engine Blend factor');
grid;
% engine rpm sub plot
subplot(5,1,2);
plot(time8, origmotorblend,'b');
hold on
plot(time8, modmblend, 'k');
title('Modified and Original Motor Blend Factors');
xlabel('Time');
ylim([-0.1 1.1]);
xlim([ 0 100]);
legend('Original Motor Blend Factor','Modified Motor Blend Factor');
grid;
% engine kill sub plot
subplot(5,1,3);
plot(time8, v_speed,'c');
title('Vehicle Speed');
xlabel('Time');
ylabel('Engine Kill');
ylim([-0.1 1.1]);
xlim([ 0 100]);
grid;
%plot Engine Crank
subplot(5,1,4);
plot(time8,A_PP,'b');
title('Engine Crank');
xlabel('Time');
ylabel('Crank Switch');
ylim([0 1]);
xlim([ 0 100]);
grid;

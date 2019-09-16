time3 = torquerequests.time;
enginetorquerequest = torquerequests.data(:,1);
motortorquerequest = torquerequests.data(:,2);
eblendfactor = torquerequests.data(:,3);
mblendfactor = torquerequests.data(:,4);
drivingmode = torquerequests.data(:,5);
enigne_state = torquerequests.data(:,6);
app = torquerequests.data(:,7);
figure(1);
% engine torque
subplot(5,1,1);
plot(time3, enginetorquerequest,'r');
title('Engine Torque Request');
xlabel('Time');
ylabel('Engine Torque');
ylim([0 25]);
xlim([ 0 100]);
grid;
% motor torque
subplot(5,1,2);
plot(time3, motortorquerequest,'b');
hold on
plot(time3, app, 'k');
title('Motor Torque Request & APP');
xlabel('Time');
ylim([0 25]);
xlim([ 0 100]);
legend('Motor Torque','APP');
grid;
% eblend
subplot(5,1,3);
plot(time3, eblendfactor,'c');
title('Engine Blend Factor');
xlabel('Time');
ylabel('Engine Blend');
ylim([0 1]);
xlim([ 0 100]);
grid;
%plot mblend
subplot(5,1,4);
plot(time3,mblendfactor,'b');
hold on
plot(time3, engine_state, 'c');
title('Motor Blend Factor & Engine State');
xlabel('Time');
ylim([0 5]);
xlim([ 0 100]);
legend('Motor Blend Factor', 'Engine State');
grid;
%plot for SOC
subplot(5,1,5);
plot(time3,drivingmode,'m');
hold on
title('Drive Mode');
xlabel('Time');
ylim([0 3.5]);
xlim([0 100]);
grid;
%plot engine state

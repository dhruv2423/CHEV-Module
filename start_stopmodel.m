time5 = startstop.time;
emotoron = startstop.data(:,1);
forward = startstop.data(:,2);
reverse = startstop.data(:,3);
mblendfact = startstop.data(:,4);
drive_Mode = startstop.data(:,5);
fswitch = startstop.data(:,6);
rswitch = startstop.data(:,7);
figure(1);
% E motor on
subplot(5,1,1);
plot(time5, emotoron,'r');
title('Electric Motor On');
xlabel('Time');
ylabel('E Motor On');
ylim([0 1.1]);
xlim([ 0 100]);
grid;
% forward
subplot(5,1,2);
plot(time5, forward,'b');
title('Forward');
xlabel('Time');
ylabel('Forward');
ylim([0 1]);
xlim([ 0 100]);
grid;
% eblend
subplot(5,1,3);
plot(time5, reverse,'c');
title('Reverse');
xlabel('Time');
ylabel('Reverse');
ylim([0 1.1]);
xlim([ 0 100]);
grid;
%plot mblend
subplot(5,1,4);
plot(time5,mblendfact,'b');
hold on
plot(time5, fswitch, 'c');
title('Motor Blend Factor & Forward Switch');
xlabel('Time');
ylim([0 1]);
xlim([ 0 100]);
legend('Motor Blend Factor', 'Forward Switch');
grid;
%plot for drivemode
subplot(5,1,5);
plot(time5,drive_Mode,'m');
hold on
plot(time5, rswitch, 'k');
title('Drive Mode & Reverse Switch');
xlabel('Time');
ylim([0 4.5]);
xlim([0 100]);
legend('Drive Mode', 'Reverse Switch');
grid;

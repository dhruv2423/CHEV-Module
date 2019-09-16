time6 = stepper.time;
difference = stepper.data(:,1);
coil1 = stepper.data(:,2);
coil2 = stepper.data(:,3);
coil3 = stepper.data(:,4);
coil4 = stepper.data(:,5);
figure(1);
% diff
subplot(5,1,1);
plot(time6, difference,'r');
title('Error');
xlabel('Time');
ylabel('Error Value');
ylim([-2 2]);
xlim([ 0 5]);
grid;
% coil1
subplot(5,1,2);
plot(time6, coil1,'b');
title('Coil 1 Output');
xlabel('Time');
ylabel('Coil 1');
ylim([-0.1 1.1]);
xlim([0 5]);
grid;
% coil2
subplot(5,1,3);
plot(time6, coil2,'k');
title('Coil 2 Output');
xlabel('Time');
ylabel('Coil 2');
ylim([-0.1 1.1]);
xlim([0 5]);
grid;
%coil 3
subplot(5,1,4);
plot(time6,coil3,'b');
title('Coil 3 Output');
xlabel('Time');
ylabel('Coil 3');
ylim([-0.1 1.1]);
xlim([0 5]);
grid;
%coil 4
subplot(5,1,5);
plot(time6,coil3,'k');
title('Coil 4 Output');
xlabel('Time');
ylabel('Coil 4');
ylim([-0.1 1.1]);
xlim([0 5]);
grid;
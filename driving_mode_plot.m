%% plot driving mode data from the 'mode_data' worlspace variable.
% We will use subplots for doing this 
%codegen
% 1 is driving_mode
% 2 is igntion switch
% 3 is motor switch
% 4 is engine switch
% 5 is vehicle speed

time = drivemode.time;
driving_mode = drivemode.data(:,1);
engine_switch = drivemode.data(:,2);
motor_switch = drivemode.data(:,3);
vehicle_speed = drivemode.data(:,4);
soc = drivemode.data(:,5);
figure(1);
% mode sub plot
subplot(5,1,1);
plot(time, driving_mode,'r');
title('Driving Mode');
xlabel('Time');
ylabel('Mode');
ylim([-0.1 3.1]);
xlim([ 0 100]);
grid;
% motor switch sub plot
subplot(5,1,2);
plot(time, engine_switch,'b');
title('Engine On Switch');
xlabel('Time');
ylabel('Engine');
ylim([-0.1 1.1]);
xlim([ 0 100]);
grid;
% engine switch sub plot
subplot(5,1,3);
plot(time, motor_switch,'c');
title('Motor On Switch');
xlabel('Time');
ylabel('Motor');
ylim([-0.1 1.1]);
xlim([ 0 100]);
grid;
%plot for vehicle speed
subplot(5,1,4);
plot(time,vehicle_speed,'b');
title('vehicle speed');
xlabel('Time');
ylabel('Speed');
ylim([0 10]);
xlim([ 0 100]);
grid;
%plot for SOC
subplot(5,1,5);
plot(time,soc,'b');
title('SOC');
xlabel('Time');
ylabel('SOC');
ylim([-0.1 1.1]);
xlim([0 100]);
grid;
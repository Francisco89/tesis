plot(a1(:,1)*1E9,a1(:,2),'r');
hold on;
plot(a1(:,1)*1E9,a1(:,3),'b');
hold on;
xlabel('tiempo (ns)');
ylabel('Amplitud (V)');
xlim([-20 80]);
grid on;
grid minor;

%delay = 44.4ns

figure();

plot(b1(:,1)*1E9,b1(:,2),'r');
hold on;
plot(b1(:,1)*1E9,b1(:,3),'b');
hold on;
xlabel('tiempo (ns)');
ylabel('Amplitud (V)');
xlim([-20 80]);
grid on;
grid minor;

%delay = 44.4ns

figure();

plot(c1(:,1)*1E9,c1(:,2),'r');
hold on;
xlabel('tiempo (ns)');
ylabel('Corriente (mA)');
xlim([50 100]);
grid on;
grid minor;

%I = 3.55mA
plot(a1(:,1)*1E9,a1(:,2),'r');
hold on;
plot(a1(:,1)*1E9,a1(:,3),'b');
hold on;
xlabel('tiempo (ns)');
ylabel('Amplitud (V)');
xlim([-40 120]);
grid on;
grid minor;

%delay = 42

figure();

plot(b1(:,1)*1E9,b1(:,2),'r');
hold on;
plot(b1(:,1)*1E9,b1(:,3),'b');
hold on;
xlabel('tiempo (ns)');
ylabel('Amplitud (V)');
xlim([-40 120]);
grid on;
grid minor;

%delay = 42

figure();

plot(c1(:,1)*1E9,c1(:,2)/390,'r');
hold on;
xlabel('tiempo (ns)');
ylabel('Corriente (I)');
xlim([40 120]);
grid on;
grid minor;

%I = 42
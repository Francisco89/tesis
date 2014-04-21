plot(a1(:,1)*1E9,a1(:,2),'r');
hold on;
plot(a1(:,1)*1E9,a1(:,3),'b');
hold on;
xlabel('tiempo (ns)');
ylabel('Amplitud (V)');
xlim([-20 80]);
grid on;
grid minor;

%delay = 41
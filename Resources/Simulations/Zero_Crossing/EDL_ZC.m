Imax = 60*10^-3;
A = 325;

Rs = A/Imax : 1 : 5*10^4;

%for Rpullup = 10K
Ithr = 0.3*10^-3;                       %function of Rpullup

%Zero crossing interrupt pulse width
Tpulse = 1/(50*pi).*(asin(Rs*Ithr/A));

subplot(2,1,1)
plot(Rs,Tpulse*10^6);
grid on
xlabel('Rs');
ylabel('Tpulse(us)')

Power = 325^2./(2*Rs);
subplot(2,1,2)
plot(Rs,Power);
grid on
xlabel('Rs');
ylabel('Power(W)')

print('Zero_Crossing_Resistor_Selection','-dpng')
R=0.3;
L=0.1;
C=10;
v=logspace(-1,1,1000);

H=1./(1+(v*R*L*C-R./v)*1i);
magnitude=abs(H);
phase=angle(H)*(180/pi);

figure;
subplot(2,1,1);
plot(v,magnitude)
title("magnitude")
grid on;
xlabel("Συχνότητα")
ylabel("Πλάτος απόκρισης συχνοτητας.")

subplot(2,1,2);
plot(v,phase);
grid on;
xlabel("Συχνότητα");
ylabel("Φάση απόκρισης συχνότητας.");

logmagnitude=20*log10(abs(H));
figure;
subplot(2,1,1);
semilogx(v,logmagnitude);
title("logarithmic value of magnitude.")
grid on;
xlabel("Συχνότητα")
ylabel("Πλάτος απόκρισης συχνοτητας.")

subplot(2,1,2);
semilogx(v,phase);
grid on;
xlabel("Συχνοτητα.");
ylabel("Λογαριθμικη φάση απόκριση συχνότητας.")



%erotima a
file=fopen("C:\Users\micha\Documents\ECG-320Hz.txt",'r');
x=fscanf(file,'%f');
fclose(file);
figure;
subplot(3,2,1);
plot(x);      
grid on;
ylabel('Data');
title('ECG');

%erotima b
x_v=fft(x,320);
subplot(3,2,2);
magnitude=abs(x_v(1:160));
v =linspace(0,160,160); 
plot(v,magnitude);
grid on;
title("Απεικόνιση του φάσματος.")
ylabel("Φάσμα.");
xlabel("συχνότητα.");

%erotima d
m=7;
moving_average_filter=(1/m)*ones(1,m);
y=conv(x,moving_average_filter);
subplot(3,2,5);
n = 1:length(y);
plot(n,y)
grid on;
ylabel("Φιλτραρισμενο σήμα.");

y_freq=fft(y,320);
subplot(3,2,6);
magnitude_y_freq=abs(y_freq(1:160));
plot(v,magnitude_y_freq);
grid on;
ylabel("΄μέτρο του φάσματος");
xlabel("συχνότητα")

%erotima c
subplot(3,2,3);
stem(0:6,moving_average_filter);
grid on;
xlabel("n");
ylabel("Moving average filter.")


moving_average_frequency=fft(moving_average_filter,320);
magnitude=abs(moving_average_frequency(1:160));
subplot(3,2,4);
plot(v,magnitude);
grid on;
xlabel("Συχνότητα.")
ylabel("Απεικονιση του φάσματος του φίλτρου του moving average")




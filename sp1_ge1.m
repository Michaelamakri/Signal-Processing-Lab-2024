%er1
f1=fopen("C:\Users\micha\Desktop\realisation1.csv",'r');
f2=fopen("C:\Users\micha\Desktop\realisation2.csv",'r');
f3=fopen("C:\Users\micha\Desktop\realisation2.csv",'r');
f4=fopen("C:\Users\micha\Desktop\realisation2.csv",'r');

signal1=fscanf(f1,'%f');
signal2=fscanf(f2,'%f');
signal3=fscanf(f3,'%f');
signal4=fscanf(f4,'%f');

fclose(f1);
fclose(f2);
fclose(f3);
fclose(f4);

figure(1)
subplot(2,2,1);
plot(signal1);
subplot(2,2,2);
plot(signal2);
subplot(2,2,3);
plot(signal3);
subplot(2,2,4);
plot(signal4);
%er2
mean1=mean(signal1);
mean2=mean(signal2);
mean3=mean(signal3);
mean4=mean(signal4);
fprintf("mean1 :%5f\n",mean1);
fprintf("mean2 :%5f\n",mean2);
fprintf("mean3 :%5f\n",mean3);
fprintf("mean4 :%5f\n",mean4);



[cor1,sl1]=xcorr(signal1);
[cor2,sl2]=xcorr(signal2);
[cor3,sl3]=xcorr(signal3);
[cor4,sl4]=xcorr(signal4);

figure(2)
subplot(2,2,1)
plot(sl1,cor1)
title("αυτοσυσχέτιση σημα 1")
ylabel("Φxx(τ)")
xlabel("τ")
subplot(2,2,2)
plot(sl2,cor2)
title("αυτοσυσχέτιση σήμα 2")
ylabel("Φxx(τ)")
xlabel("τ")
subplot(2,2,3)
plot(sl3,cor3)
title("αυτοσυσχέτιση σήμα 3")
ylabel("Φxx(τ)")
xlabel("τ")
subplot(2,2,4)
plot(sl4,cor4)
title("αυτοσυσχέτιση σήμα 4")
ylabel("Φxx(τ)")
xlabel("τ")
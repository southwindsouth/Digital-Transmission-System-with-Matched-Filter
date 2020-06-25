clc,clear;
Ts=0.002;
T0=Ts/10;
t=-2*Ts:T0:6*Ts;
p=@(t)rect((t-Ts/2)/Ts);

k=1;
y=p(t-k*Ts);
h=p(Ts-t);

%t1=0:Ts/10:12*Ts;
t1=T0*(1:length(conv(y,h)));
g=conv(y,h);
plot(t1 ,g);
grid on
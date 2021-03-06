clc;
clear;
Ts=0.002;
T0=Ts/10;
t=-2*Ts:T0:6*Ts;
p=@(t)rect((t-Ts/2)/Ts);
x1=4*p(t-1*Ts);
x2=2*p(t-2*Ts);
x3=-2*p(t-3*Ts);
x4=-4*p(t-4*Ts);
figure;
hold on;
grid on;
plot(t,x1,t,x2,t,x3,t,x4);
legend('x1','x2','x3','x4');
x=x1+x2+x3+x4;
figure;
plot(t,x);
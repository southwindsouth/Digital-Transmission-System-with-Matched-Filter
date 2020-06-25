Ts=0.002;
T0=Ts/10;
t=-2*Ts:T0:6*Ts;
p=@(t)rect((t-Ts/2)/Ts);
h=p(t);

y1=4*p(t-1*Ts);
z1=T0/Ts* conv(y1,h);
tz1=T0*(1:(length(z1)));
figure;plot(tz1,z1);
grid on;

y2=2*p(t-1*Ts);
z2=T0/Ts*conv(y2,h);
tz2=T0*(1:(length(z2)));
figure;plot(tz2,z2);
grid on;



py=input('please input the signal codes in the binary string\n','s');
while rem(length(py),2)
    disp('your input is worng');
    py=input('please reinput the signal codes\n','s');
end
array=reshape(py,[],length(py)/2);%reshape the input signal for identify
disp('the input code is split as');disp(array);
outcome=mapping(array);
ask=outcome(:,1)';
ask=ask(1:2:length(py));
disp(ask);

[t,y]=modulator(ask);

z=T0/Ts*conv(y,h);
tz=T0*(1:(length(z)));
figure;plot(tz,z);
grid on;
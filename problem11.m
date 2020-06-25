clc
Ts=0.002;
T0=Ts/10;
t=-2*Ts:Ts/10:8*Ts;
p=@(t)rect((t-Ts/2)/Ts);
h=p(t);

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
[t,x]=modulator(ask);


for varnoise=1:49:100


%Increase noise interference output
y=x+sqrt(varnoise)*randn(size(x));
figure;
subplot(311);
plot(t,y);
ylabel('yt');

p=@(t)rect((t-Ts/2)/Ts);
h=p(Ts-t);
z=T0/Ts*conv(y,h);
tz=T0*(1:(length(z)));
subplot(312);
plot(tz,z);
ylabel('zt');


[t,x]=modulator(ask);
z=T0/Ts*conv(x,h);
tz=T0*(1:(length(z)));
zk=sample(z);
subplot(313);
disp(zk);
plot(zk);
ylabel('zk');


% ak=decision(zk);
% disp('estimated modulation symbols is');disp(ak);
% figure;plot(ak);
% grid on;ylabel('ak')
% 
% 
% bk=demapper(ak);
% disp('sequence of estimated data bits is');disp(bk);
% figure;plot(bk);
% grid on;ylabel('bk');
% 
% 
% error_rate=length(find(bk-py))/length(bk);
% disp(error_rate);



end
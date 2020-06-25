clc;
Ts=0.002;
T0=Ts/10;
t=-2*Ts:Ts/10:6*Ts;
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
disp('ask signal is');disp(ask);
[t,xt]=modulator(ask);

varnoise=100;
error_rate_all=0;


for i=1:1:100
yt=xt+sqrt(varnoise)*randn(size(xt));
zt=T0/Ts*conv(yt,h);
tz=T0*(1:(length(zt)));
zk=sample(zt);
ak=decision(zk);
bk=demapper(ak);


py_num=zeros(1,8);
py_num=10011100;
%disp(py_num);
bk=bk(1:length(py));
error_rate=1-length(find(bk==py_num))/length(py_num);
error_rate_all=error_rate+error_rate_all;

end

disp(error_rate_all);
average=error_rate_all/100;
disp(average);
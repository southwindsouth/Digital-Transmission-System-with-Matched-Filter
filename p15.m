clc;
ask=[-4,2,-2,4];
py=[1 0 0 1 1 1 0 0];
error_rate_all=0;
py_num=[1,0,0,1,1,1,0,0];
Ts=0.002;
T0=Ts/10;
t=-2*Ts:Ts/10:6*Ts;
p=@(t)rect((t-Ts/2)/Ts);
h=p(t);
varnoise = 100;

for i=1:1:1000
[t,xt]=modulator(ask);
yt=xt+sqrt(varnoise)*randn(size(xt));
zt=T0/Ts*conv(yt,h);
tz=T0*(1:(length(zt)));
zk=sample(zt);
ak=decision(zk);
bk=demapper(ak);
bk=bk(1:length(py));
error_rate=1-length(find(bk==py_num))/length(py_num);
error_rate_all=error_rate+error_rate_all;
average=error_rate_all/i;
disp(average);
end



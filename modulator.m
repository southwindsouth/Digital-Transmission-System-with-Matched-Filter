function [t,transmit_signal]=modulator(symbols)

Ts=0.002;
T0=Ts/10;
t = -2*Ts:T0:10*Ts;
n = size(symbols ,2);
p = @(t)rect((t-Ts/2)/Ts);
transmit_signal=0;
for i=1:n
    transmit_signal=transmit_signal+symbols(1,i)*p(t-i*Ts);
end
end


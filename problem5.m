clc
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


[t,modulation]=modulator(ask);
plot(t,modulation);
grid on;
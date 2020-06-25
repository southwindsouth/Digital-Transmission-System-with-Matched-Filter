clc
py=input('please input the signal codes\n','s');
len=length(py);
while rem(len,2)
    disp('your input is worng');
    py=input('please reinput the signal codes\n','s');
end
disp('the input code is split as');disp(py);
ask=mapping(array);%º∆À„”≥…‰÷µ
for i=1:1:length(py)
    
   new_ask(i)=ask(2*i-1); 
    
end
t=0:0.0002:0.004;
ts=0.002;
for i=1:1:len/2  
   mt(i)=new_ask(i).*rect((t-i*ts-ts/2)/ts);
   xt(i)=mt(i)+xt(i);   
end

plot(t,xt);
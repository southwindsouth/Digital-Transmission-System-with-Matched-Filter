function output =demapper(input)
L=length(input);
for i=1:L
    if input(i)==4
        temp(:,i)=[0,0];
    elseif input(i)==2
        temp(:,i)=[0,1];
    elseif input(i)==-2
        temp(:,i)=[1,1];
    elseif input(i)==-4
        temp(:,i)=[1,0];
    end
end
k=1;
for i=1:L
output(k)=temp(1,i);
output(k+1)=temp(2,i);
k=k+2;
end
end

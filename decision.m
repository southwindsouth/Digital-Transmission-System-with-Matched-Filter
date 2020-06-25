function ak= decision(zk)
len=length(zk);
ak=[];
for i=1:1:len
    distance_1=abs(4-zk(i));
    distance_2=abs(2-zk(i));
    distance_3=abs(-4-zk(i));
    distance_4=abs(-2-zk(i));    
    distance=[distance_1,distance_2,distance_3,distance_4];
    value=[4,2,-4,-2];
    [~,n]=min(distance);
    ak(i)=value(n); 
end 

end


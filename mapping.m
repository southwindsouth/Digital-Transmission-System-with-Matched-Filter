function q= mapping(array)
 len=2*length(array);
 q=zeros(len);
 for  i=1:2:len
    switch  strcat(array(i),array(i+1)) 
    case '00'
        q(i)=4;
    case '01'
        q(i)=2;
    case '11'
        q(i)=-2;
    case '10'
        q(i)=-4;
    end
 end              
end


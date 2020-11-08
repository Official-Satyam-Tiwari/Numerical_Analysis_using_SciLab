//PRIME NUMBER CHECKER

n = input("Enter any number = ");
flag = 0;

if n >1 then
    for i = 2:(n-1)        
            if (modulo(n,i)==0) then
            disp(string(n)+" is NOT a PRIME NUMBER.");
//            div = n/i
//            disp(string(n)+" is divisible by 1, "+string(div)+" and "+string(n));
            flag = 1;
            break;
        end
    end

    if flag == 0 then
        disp(string(n)+" is a PRIME NUMBER.")
        break;
    end
else
    disp(string(n)+" is NOT a PRIME NUMBER ;(<=1)");
end

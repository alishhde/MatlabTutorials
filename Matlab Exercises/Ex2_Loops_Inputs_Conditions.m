
% Let's get the input number
mainnumber = input("Please enter your number: ");

if isprime(mainnumber)
    % we must show the number as the answer
    fprintf("%d = %d\n", mainnumber, mainnumber);
else
    primeArrays = [];
    while isprime(mainnumber) == 0
        [FirstDiv, mainnumber] = FirstDivisible(mainnumber);
        primeArrays(end+1) = FirstDiv;
    end
    primeArrays(end+1) = mainnumber;
    
%   Let's print out the output
    fprintf("%d = %d", mainnumber, primeArrays(1));
    for i = 2 : length(primeArrays)
        fprintf(" * %d", primeArrays(i));
    end  
    fprintf("\n")
    
end

% Let's define our function
function [FDivisible, RNumber] = FirstDivisible(Mainnumber)
    for DivideToMe = 2:Mainnumber
        if (Mainnumber / DivideToMe) == floor(Mainnumber / DivideToMe)
            FDivisible = DivideToMe;
            RNumber = Mainnumber / DivideToMe;
            break
        end
    end
end
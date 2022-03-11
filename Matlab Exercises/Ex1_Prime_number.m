% Seyyedali Shohadaalhosseini - UMZ - 97122920012
in_number = input("Please enter N: ");
for i = 1 : in_number
    ls = [];
    prime_counter = 0;   % This counter will helps us to determine 
                         % whether the input number is prime or not ?
    for j = 1 : i
        if (rem(i, j) == 0)
            prime_counter = prime_counter + 1;
            ls(end+1) = j;
        end        
    end
    
    uniq_ls = unique(ls);
    if (prime_counter == 2)
        fprintf("D(%2.d) = {", i);
        fprintf("%i, ", uniq_ls(:, end-1));
        fprintf("%i}    IsPrime!\n", uniq_ls(end));
    else
        if length(uniq_ls) == 1
            fprintf("D(%2.d) = ", i);
            fprintf("%i\n", uniq_ls);
        else
            fprintf("D(%2.d) = {", i);
            fprintf("%i, ", uniq_ls(1:end-1));
            fprintf("%i}\n", uniq_ls(end));
        end
    end
end
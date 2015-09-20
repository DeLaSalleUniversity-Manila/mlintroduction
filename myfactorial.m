function result = my_factorial(n)
  if( n == 0 )
    result = 1;
    return;
 else
    result = 1;
    for i = 1:n
       result = result*i; 
    endfor
endif
endfunction

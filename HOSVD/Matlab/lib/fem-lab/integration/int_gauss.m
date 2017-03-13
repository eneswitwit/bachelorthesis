function value = int_gauss(x_1,w_1,x_2,w_2,f)     % We want to use the 2 dimensional Gauss Quadratur. As output we get the approximated integral.    % x are the sample points and w are the weights, which we get from the funciton int_gauss_weights()    % f is the function, we calculate the integral over.        % ------- Approximate integral --------    % Calculate number of sample points.    dim_1 = length(x_1);    dim_2 = length(x_2);    % Initialize starting value    value = 0;    % Calculcate 2 dimensional gauss    for i=1:dim_1        for j=1:dim_2            value = value + f(x_1(i),x_2(j))*w_2(j)*w_1(i);        endfor    endfor    % --------------------------------------    endfunction
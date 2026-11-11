function [X,N]=bisection(Fp,a,b,tol)

N = 0;
X = [];
while (b-a > tol) && (N < 100)
    m = (a+b)/2;
    if Fp(m) < 0
        a = m;
    else
        b = m;
    end
   
    X(end+1, :) = [a, b, b-a];

    N = N+1;
end
end
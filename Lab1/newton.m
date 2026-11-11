function [X,N]=newton(Fp,Fpp,lambda,tol)
    N = 0;
    X = [];
    fpl = Fp(lambda);
    while (abs(fpl) > tol) && (N < 100)
        fppl = Fpp(lambda);
        if (fppl <= 0)
            error("oh no");
        end
        X(end+1, :) = [lambda, fpl];
        lambda = lambda - fpl / fppl;
        fpl = Fp(lambda);
        N = N+1;
    end
end
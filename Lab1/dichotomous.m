function [X,N]=dichotomous(F,a,b,tol)
    delta = tol/4;
    N = 0;
    X = [];
    while (b-a > tol) && (N < 100)
        m_l = (a+b)/2 - delta;
        m_r = (a+b)/2 + delta;
        % disp([N a b m_l m_r b-a])
        if F(m_l) > F(m_r) 
            a = m_l;
        else 
            b = m_r;
        end
        X(end+1, :) = [a, b, b-a];
    
        N = N+1;
    end
end
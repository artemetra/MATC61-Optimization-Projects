function [X,N]=goldensection(F,a,b,tol)
    tau = (sqrt(5)-1)/2; % golden ratio
    
    N = 1;
    X = [];
    L = b-a;
    m_l = b - L*tau;
    m_r = a + L*tau;
    bracket = [a m_l b];
    while (bracket(3)-bracket(1) > tol) && (N < 100)
        X(end+1, :) = [m_l, m_r, L];
        disp([N m_l m_r L])
    
        if F(m_l) < F(m_r)
            bracket = [bracket(1), m_l, m_r];
        else
            bracket = [m_l, m_r, bracket(3)];
        end
        L = bracket(3)-bracket(1);
    
        m_l = bracket(3) - L*tau;
        m_r = bracket(1) + L*tau;
        
        N = N+1;
    end
end
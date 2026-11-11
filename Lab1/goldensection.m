function [X,N] = goldensection(F,a,b,tol)
    tau = (sqrt(5)-1)/2; % golden ratio
    N = 0;
    X = [];
    m_l = b - tau*(b-a);
    m_r = a + tau*(b-a);
    f_l = F(m_l);
    f_r = F(m_r);
    while (b-a > tol) && (N < 100)
        if f_l < f_r
            b = m_r;

            m_r = m_l;
            f_r = f_l;
    
            m_l = b - tau*(b-a);
            f_l = F(m_l);
        else
            a = m_l;
    
            m_l = m_r;
            f_l = f_r;
    
            m_r = a + tau*(b-a);
            f_r = F(m_r);
        end
    
        X(end+1, :) = [a, b, b-a];
    
        N = N+1;
    end
end

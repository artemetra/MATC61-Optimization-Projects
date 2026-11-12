f1=@(x) (-x^4+6*x^2)/(1+(x-0.5)^4)
options=optimset('display','iter');
fminbnd(f1,-10,10,options)
disp("================")
[x,fval,exitflag,output]=fminunc(f1,-1,options)
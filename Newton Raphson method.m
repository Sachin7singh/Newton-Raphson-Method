% Newton Raphson Method B180123EE
 clc;
 f=@(x) (x.^3-3*x-5);
 fd=@(x) (3*x.^2-3);
 X0=input('Enter initial approximaation: ');
 n=input('Enter no. of iterations, n: ');
 err=input('Enter tolerance: ');

 k= 1;
 while k <= n
    d=f(X0)/fd(X0);
    X0 = X0 - d; 
    if abs(d) < err
       fprintf('Required root of given function Xn= %.4f \n\n',X0);

    break;
    else
       k = k+1;
    end
 end
       
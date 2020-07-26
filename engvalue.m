function [outeng]=engvalue(De,a,n)
m=1;
lambda=sqrt(2.0*m*De)/a;
w0=sqrt(2*a^2*De/m);
en=n+0.5-0.5*(n+0.5)^2/lambda;
energy=w0*en;
outeng=energy;
end
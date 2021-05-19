N=100000;
x1=-5+10*rand(1,N);
f=1/sqrt(2*pi)*exp(-x1.^2/2);
M=max(f);
x2=M*rand(1,N);
x=x1(x2<f);
f=1/sqrt(2*pi)*exp(-x.^2/2);
plot(x,f,'r.')

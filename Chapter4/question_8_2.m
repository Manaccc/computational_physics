%��ţ�ٷ����
clear;
f=@(x)exp(1)^x-4*cos(x);
df=@(x)exp(1)^x+4*sin(x);
x0=pi/4;
Delta=0.001;
n=0;
if abs(f(x0))<Delta
    fprintf('���̵ĸ�Ϊ%.3f\n',f(x0))
end
while abs(f(x0))>=Delta
    n=n+1;
    x1=x0-f(x0)/df(x0);
    if abs(f(x1))<=Delta
        fprintf('���̵ĸ�Ϊ%.3f',x1)
        break
    else
        x0=x1;
    end
end
fprintf('�������Ϊ%d\n',n);
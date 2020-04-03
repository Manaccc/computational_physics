%���Ҹ���
clear;
f=@(x)exp(1)^x-4*cos(x);
x0=pi/4;
x1=pi/2;
Delta=0.001;
n=0;
x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
if abs(f(x0))<Delta
    fprintf('���̵ĸ�Ϊ%.3f\n',f(x0))
elseif abs(f(x1))<Delta
    fprintf('���̵ĸ�Ϊ%.3f\n',f(x1))
elseif abs(f(x2))<Delta
    fprintf('���̵ĸ�Ϊ%.3f\n',f(x2))
end
while abs(f(x2))>=Delta
    n=n+1;
    x0=x1;
    x1=x2;
    x2=x1-f(x1)*(x1-x0)/(f(x1)-f(x0));
    if abs(f(x2))<Delta
        fprintf('���̵ĸ�Ϊ%.3f\n',x2)
        break
    end
end
fprintf('�������Ϊ%d\n',n);
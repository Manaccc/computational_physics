%�öԷַ����
clear;
f=@(x)exp(1)^x-4*cos(x); %��pi/4��pi/2��Ϊ����������
x0=pi/4;
x1=pi/2;
Delta=0.001;
n=0;
if abs(f(x0))<Delta
    fprintf('���̵ĸ�Ϊ%.3f\n',f(x0))
elseif abs(f(x1))<Delta
    fprintf('���̵ĸ�Ϊ%.3f\n',f(x0))
elseif f(x0)*f(x1)>0
    fprintf('�����ڴ������޸�')
end
while f(x0)*f(x1)<0
    n=n+1;
    mid=(x0+x1)/2;
    if abs(f(mid))<Delta
        fprintf('���̵ĸ�Ϊ%.3f\n',mid);
        break
    elseif f(mid)*f(x0)>0
        x0=mid;
    else
        x1=mid;
    end
end
fprintf('�������Ϊ%d\n',n);
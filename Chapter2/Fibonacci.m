function Fibonacci(s)
%Fibonacci 
%��С��������Ȼ��n��쳲��������и���

if (s >= 0) && (fix(s)-s)==0 %�ж��Ƿ�Ϊ��Ȼ��
    if s==0  %����������Ȼ��Ϊ0��ֱ�ӷ���
        return;
    elseif s==1 %����������Ȼ��Ϊ1��ֱ�����1��1
        res=[1,1];
        display(res(1:end))
    else        %�������Ȼ��Ϊ2
        m=1;
        n=1;
        res=[1,1];
        while(n<s)
            val=n;
            n=m+n;
            res(end+1)=n;
            m=val;
        end
        disp(res(1:end-1)) %���һ�������������Ȼ�������Բ����
    end
else
    fprintf("��������Ȼ��\n")%���������ʾ
end
end
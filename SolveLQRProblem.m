function [K] = SolveLQRProblem(A,B,Q,R,max_num_iteration)
%UNTITLED2 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
P=Q;
num_iteration=0;
while(num_iteration<max_num_iteration)
    P_next =A'*P*A-A'*P*B*(inv(R+B'*P*B))*B'*P*A+Q;
    num_iteration=num_iteration+1;
    P=P_next;
end
 K=(inv(R+B'*P*B))*B'*P*A;
end

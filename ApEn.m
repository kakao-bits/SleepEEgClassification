function ApEn_value = ApEn(signal,m,r_factor)
%% ���������ľ������ �����ȥ1,���п��ܳ���0,�������log���ɸ�����

% �������ƣ�ApEn(ApproximateEntropy)
% �������ܣ����źŵĽ����� 
% �������룺����ʱ������   signal
%          ģʽά��       m : m=1 or m= 2 
% ���������������        ApEn_value
% ����˵����N (signal length) between 75 and 5000;
%          r between 0.1*STD and 0.25*STD, where STD is the signal standard deviation
%
% signal = signal(:);
% N = length(signal); 
% C computation for the "m" pattern.
r = r_factor*std(signal);
[C_m] = C_m_computation(signal,m,r);
% C computation for the "m+1" pattern.
[C_m_1] = C_m_computation(signal,m+1,r);
% Phi��s computation.
phi_m = mean(log(C_m)) ;
phi_m_1 = mean(log(C_m_1)) ;
% Final ApEn computation.
ApEn_value = [phi_m - phi_m_1];
% disp(['--------->>������: ', num2str(ApEn_value)])

function [Bi] = C_m_computation(signal,m,r)
X = [];
% C_im = [];
% n_im = [];
% max_dif = [];
N = length(signal); 

Bi = zeros(1,N-m+1);
% Construction of the X��s vectors.

for j = 1:N-m+1
    X(j,:) = signal(j:j+m-1);
end

X = X';

% C computation.
parfor j = 1:N-m+1
%     aux1 = repmat(X(j,:),N-m+1,1); %����
%     dif_aux = abs(X-aux1);    
       
%     Xs = X(:,j:N-m+1); 
%     dist = max((abs( Xs - repmat(X(:,j), 1,N-m+1-j+1) )));%�����б�ѩ�����
    
    dist = max((abs( X - repmat(X(:,j),1,N-m+1) )));%�����б�ѩ�����

    D = (dist <= r);
    Bi(j) = sum(D)./(N-m+1);  %���������ľ������ �����ȥ1,���п��ܳ���0,�������log���ɸ�����

end

aa=0;
bb=aa;


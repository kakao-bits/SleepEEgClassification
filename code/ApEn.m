function ApEn_value = ApEn(signal,m,r_factor)
%% 满足条件的距离个数 如果减去1,则有可能出现0,后面计算log会变成负无穷

% 函数名称：ApEn(ApproximateEntropy)
% 函数功能：求信号的近似熵 
% 函数输入：输入时间序列   signal
%          模式维数       m : m=1 or m= 2 
% 函数输出：近似熵        ApEn_value
% 其他说明：N (signal length) between 75 and 5000;
%          r between 0.1*STD and 0.25*STD, where STD is the signal standard deviation
%
% signal = signal(:);
% N = length(signal); 
% C computation for the "m" pattern.
r = r_factor*std(signal);
[C_m] = C_m_computation(signal,m,r);
% C computation for the "m+1" pattern.
[C_m_1] = C_m_computation(signal,m+1,r);
% Phi’s computation.
phi_m = mean(log(C_m)) ;
phi_m_1 = mean(log(C_m_1)) ;
% Final ApEn computation.
ApEn_value = [phi_m - phi_m_1];
% disp(['--------->>近似熵: ', num2str(ApEn_value)])

function [Bi] = C_m_computation(signal,m,r)
X = [];
% C_im = [];
% n_im = [];
% max_dif = [];
N = length(signal); 

Bi = zeros(1,N-m+1);
% Construction of the X’s vectors.

for j = 1:N-m+1
    X(j,:) = signal(j:j+m-1);
end

X = X';

% C computation.
parfor j = 1:N-m+1
%     aux1 = repmat(X(j,:),N-m+1,1); %复制
%     dif_aux = abs(X-aux1);    
       
%     Xs = X(:,j:N-m+1); 
%     dist = max((abs( Xs - repmat(X(:,j), 1,N-m+1-j+1) )));%计算切比雪夫距离
    
    dist = max((abs( X - repmat(X(:,j),1,N-m+1) )));%计算切比雪夫距离

    D = (dist <= r);
    Bi(j) = sum(D)./(N-m+1);  %满足条件的距离个数 如果减去1,则有可能出现0,后面计算log会变成负无穷

end

aa=0;
bb=aa;


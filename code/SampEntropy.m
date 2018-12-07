% notification: this is a modification work based on that of Kijoon Lee.
function SampEn_value = SampEntropy( dim, r, data, tau )
% SAMPEN Sample Entropy  样本熵
%   calculates the sample entropy of a given time series data

%   SampEn is conceptually similar to approximate entropy (ApEn), but has
%   following differences:
%       1) SampEn does not count self-matching. The possible trouble of
%       having log(0) is avoided by taking logarithm at the latest step.
%       2) SampEn does not depend on the datasize as much as ApEn does. The
%       comparison is shown in the graph that is uploaded.

%   dim     : embedded dimension
%   r       : tolerance (typically 0.2 * std)
%   data    : time-series data
%   tau     : delay time for downsampling (user can omit this, in which case
%             the default value is 1)
%

if nargin < 4, tau = 1; end
if tau > 1, data = downsample(data, tau); end

N = length(data);
result = zeros(1,2);

for m = dim:dim+1
    Bi = zeros(1,N-m+1);
    dataMat = zeros(m,N-m+1);

    % setting up data matrix
    for i = 1:m
        dataMat(i,:) = data(i:N-m+i);
    end
    % counting similar patterns using distance calculation
    parfor j = 1:N-m+1
        % calculate Chebyshev distance, excluding self-matching case
        dist = max(abs(dataMat - repmat(dataMat(:,j),1,N-m+1)));
        % calculate Heaviside function of the distance
        % User can change it to any other function
        % for modified sample entropy (mSampEn) calculation
        D = (dist <= r);
        % 
        Bi(j) = (sum(D))/(N-m-1); %计算比值
    end

    % summing over the counts
    result(m-dim+1) = mean(Bi);
end

SampEn_value = -log(result(2)/result(1));
% disp(['--------->>样本熵: ', num2str(SampEn_value)])
end













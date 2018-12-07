function [data , Label] = slp_trainfeature(u,data,Label,downsampK)

name_deep = sprintf('slpdb%03d_deepf6_feature',u);
name_wake = sprintf('slpdb%03d_wakef6_feature',u);

load(name_deep)
load(name_wake)

% data_wake_feature = [data_wake_feature; data_wake_feature]; %延长.合并浅睡和清醒期特征 训练
deepL = size(data_deep_feature,1);
wakeL = size(data_wake_feature,1);
s = randperm(wakeL, fix(wakeL/downsampK));
data_wake_feature = data_wake_feature(s,:); %降采样
deepL = size(data_deep_feature,1);
wakeL = size(data_wake_feature,1);

deepLabel = repmat({'deep'}, deepL,1);
wakeLabel = repmat({'mix'}, wakeL,1);  %为了配合ucd的mix类
Label = [Label; deepLabel; wakeLabel];
data = [data; data_deep_feature; data_wake_feature];

% figure(10)
% scatter3(data_deep_feature(:,1), data_deep_feature(:,2), data_deep_feature(:,3),'r*'), hold on
% scatter3(data_wake_feature(:,1), data_wake_feature(:,2), data_wake_feature(:,3),'b*');hold on


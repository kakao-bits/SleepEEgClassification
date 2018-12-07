function [datatrain , Label] = ucd_trainfeature(u,datatrain,Label)

name_deep = sprintf('ucd%03d_deepf6_feature',u);
name_mix = sprintf('ucd%03d_mixf6_feature',u);
name_wake = sprintf('ucd%03d_wakef6_feature',u);

load(name_deep)
load(name_mix)
load(name_wake)

data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %延长.合并浅睡和清醒期特征 训练

deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
Label = [Label; deepLabel; mixLabel];
datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];

figure(10)
scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on


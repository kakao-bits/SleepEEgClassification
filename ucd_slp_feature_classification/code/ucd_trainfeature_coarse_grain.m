function [datatrain,datatrain_CG , Label] = ucd_trainfeature_coarse_grain(u,datatrain,datatrain_CG,Label,downsampK)
%%  ����ucd����ѵ������  ���ҽ����������� ����������
name_deep = sprintf('ucd%03d_deepf6_feature',u);
name_mix = sprintf('ucd%03d_mixf6_feature',u);
name_wake = sprintf('ucd%03d_wakef6_feature',u);

load(name_deep)
load(name_mix)
load(name_wake)

data_mix_featuretrain = [data_mix_feature; data_wake_feature]; % ʹ���ܼ�, ���н�����֤
data_deep_featuretrain = data_deep_feature;


deepL = size(data_deep_featuretrain,1);
mixL = size(data_mix_featuretrain,1);
s = randperm(mixL, fix(mixL/downsampK));
data_mix_featuretrain = data_mix_featuretrain(s,:); %������

deepL = size(data_deep_featuretrain,1);
mixL = size(data_mix_featuretrain,1);

deepLabel = repmat({'deep'}, deepL,1);
mixLabel = repmat({'mix'}, mixL,1);
Label = [Label; deepLabel; mixLabel];
datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];

CG_Value = -10;
data_deep_featuretrain_CG = roundn(data_deep_featuretrain,CG_Value);  %������
data_mix_featuretrain_CG = roundn(data_mix_featuretrain,CG_Value);  %������
datatrain_CG = roundn(datatrain, CG_Value);  %���;���

% 
% figure(10)
% scatter3(data_deep_featuretrain_CG(:,1), data_deep_featuretrain_CG(:,2), data_deep_featuretrain_CG(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain_CG(:,1), data_mix_featuretrain_CG(:,2), data_mix_featuretrain_CG(:,3),'b*');hold on

%%   ����������
% deepLabel_CG = repmat({'deep'}, deepL,1);
% mixLabel_CG = repmat({'mix'}, mixL,1);
% Label_CG = [Label_CG; deepLabel_CG; mixLabel_CG];
% 
% data_deep_featuretrain_CG = roundn(data_deep_featuretrain,-1);
% 
% datatrain_CG = [datatrain_CG; data_deep_featuretrain_CG; data_mix_featuretrain_CG];











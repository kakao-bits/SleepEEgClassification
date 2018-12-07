

clear
close all

mix= [];
deep = [];
%% 
%       ---  已经完成 (003  022  015  018  020  002)  (005  023) 
%                (024 025 026 027 028)(这五个数据比较糟糕)  一共13个被试



% load('ucd020_mixf6_feature.mat')
% load('ucd020_deepf6_feature.mat')
% mix = data_mix_feature;
% deep = data_deep_feature;
% 
% load('ucd003_mixf6_feature.mat')
% load('ucd003_deepf6_feature.mat')
% mix = [mix;data_mix_feature];
% deep = [deep;data_deep_feature];
% 
% load('ucd002_mixf6_feature.mat')
% load('ucd002_deepf6_feature.mat')
% mix = [mix;data_mix_feature];
% deep = [deep;data_deep_feature];
% 
% load('ucd022_mixf6_feature.mat')
% load('ucd022_deepf6_feature.mat')
% mix = [mix;data_mix_feature];
% deep = [deep;data_deep_feature];
% 
% load('ucd015_mixf6_feature.mat')
% load('ucd015_deepf6_feature.mat')
% mix = [mix;data_mix_feature];
% deep = [deep;data_deep_feature];
% 
% load('ucd018_mixf6_feature.mat')
% load('ucd018_deepf6_feature.mat')
% mix = [mix;data_mix_feature];
% deep = [deep;data_deep_feature];

load('ucd024_mixf6_feature.mat')
load('ucd024_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];

load('ucd025_mixf6_feature.mat')
load('ucd025_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];

load('ucd026_mixf6_feature.mat')
load('ucd026_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];

load('ucd027_mixf6_feature.mat')
load('ucd027_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];

load('ucd028_mixf6_feature.mat')
load('ucd028_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];

load('ucd010_mixf6_feature.mat')
load('ucd010_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];
load('ucd011_mixf6_feature.mat')
load('ucd011_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];
load('ucd012_mixf6_feature.mat')
load('ucd012_deepf6_feature.mat')
mix = [mix;data_mix_feature];
deep = [deep;data_deep_feature];
% load('ucd023_mixf6_feature.mat')
% load('ucd023_deepf6_feature.mat')
% mix = [mix;data_mix_feature];
% deep = [deep;data_deep_feature];
% 
% load('ucd005_mixf6_feature.mat')
% load('ucd005_deepf6_feature.mat')
% mix = [mix;data_mix_feature];
% deep = [deep;data_deep_feature];
%% ----------------------------------------------------------------
scatter3(mix(:,1), mix(:,2), mix(:,3),'r*'), hold on
scatter3(deep(:,1), deep(:,2), deep(:,3),'bo');hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'r*'), hold on
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'bo');hold on
xlabel('近似熵'),ylabel('样本熵'),zlabel('频谱熵')
% axis([0,1,0,1,0,1]);




%% 没有滤波的--------------------------------------------------------------------------------------------------
% load('ucd022_mix_feature.mat')
% load('ucd022_deep_feature.mat')
% scatter3(data_mix_feature(:,1), data_mix_feature(:,2), data_mix_feature(:,3),'r*'), hold on
% scatter3(data_deep_feature(:,1), data_deep_feature(:,2), data_deep_feature(:,3),'bo');hold on
% legend('被试1深睡特征点','被试1清醒特征点','被试2深睡特征点','被试2清醒特征点','被试3深睡特征点','被试3清醒特征点');
% set(gca,'FontSize',15);
% % 
% % xlabel('近似熵'),ylabel('样本熵'),zlabel('频谱熵')
% % 
% load('ucd015_mix_feature.mat')
% load('ucd015_deep_feature.mat')
% scatter3(data_mix_feature(:,1), data_mix_feature(:,2), data_mix_feature(:,3),'r*'), hold on
% scatter3(data_deep_feature(:,1), data_deep_feature(:,2), data_deep_feature(:,3),'bo');hold on
% 
% xlabel('近似熵'),ylabel('样本熵'),zlabel('频谱熵')
% 
% load('ucd018_mix_feature.mat')
% load('ucd018_deep_feature.mat')
% scatter3(data_mix_feature(:,1), data_mix_feature(:,2), data_mix_feature(:,3),'r*'), hold on
% scatter3(data_deep_feature(:,1), data_deep_feature(:,2), data_deep_feature(:,3),'bo');hold on
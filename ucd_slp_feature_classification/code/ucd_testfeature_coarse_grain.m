function [deep_count,mix_count,test_N_deep,test_N_mix] = ucd_testfeature_coarse_grain(u,SVMModel,deep_count,mix_count,test_N_deep,test_N_mix)
%%  测试ucd数据集的特征
name_deep = sprintf('data/ucd%03d_deepf6_feature',u);
name_mix = sprintf('data/ucd%03d_mixf6_feature',u);
name_wake = sprintf('data/ucd%03d_wakef6_feature',u);

load(name_deep)
load(name_mix)
load(name_wake)

%% -------------------------------
% data_mix_feature = [data_mix_featuretrain; data_wake_featuretrain]; % 修改总集或测试集
% deep_N = size(data_deep_featuretrain,1); % 修改总集或测试集
% mix_N = size(data_mix_feature,1);
% test_N = test_N + mix_N +deep_N;
% for i = 1:deep_N
%     [testlabel,~] = predict(SVMModel,data_deep_featuretrain(i,:)); % 修改总集或测试集
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% for i = 1:mix_N
%     [testlabel,~] = predict(SVMModel,data_mix_feature(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end

%% -------------------------------
data_mix_feature = [data_mix_featuretest; data_wake_featuretest]; % 修改总集或测试集
deep_N = size(data_deep_featuretest,1); % 修改总集或测试集
mix_N = size(data_mix_feature,1);
% test_N = test_N + mix_N +deep_N;
test_N_deep = test_N_deep  +deep_N;
test_N_mix = test_N_mix  +mix_N;
CG_Value = -6;

for i = 1:deep_N
    [testlabel,~] = predict(SVMModel,roundn(  data_deep_featuretest(i,:),CG_Value)); % 修改总集或测试集
    deep_count = deep_count + strcmp(testlabel,'deep');
end
for i = 1:mix_N
    [testlabel,~] = predict(SVMModel,roundn( data_mix_feature(i,:), CG_Value));
    mix_count = mix_count + strcmp(testlabel,'mix');
end



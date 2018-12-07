function [deep_count,wake_count,test_N_deep,test_N_wake] = slp_testfeature(u,SVMModel,deep_count,wake_count,test_N_deep,test_N_wake)

name_deep = sprintf('slpdb%03d_deepf6_feature',u);
name_wake = sprintf('slpdb%03d_wakef6_feature',u);
load(name_deep)
load(name_wake)



%% -------------------------------

deep_N = size(data_deep_feature,1);  % 修改总集或测试集
wake_N = size(data_wake_feature,1);
test_N_deep = test_N_deep  +deep_N;
test_N_wake = test_N_wake  +wake_N;

for i = 1:deep_N
    [testlabel,~] = predict(SVMModel,data_deep_feature(i,:)); % 修改总集或测试集
    deep_count = deep_count + strcmp(testlabel,'deep');
end
for i = 1:wake_N
    [testlabel,~] = predict(SVMModel,data_wake_feature(i,:));
    wake_count = wake_count + strcmp(testlabel,'mix');   %为了配合ucd的mix类
end
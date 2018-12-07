clear
close all


%% ---可修改u  wake和wake  是否合并所有人的总特征
for u = 2
    name_wake_En = sprintf('ucd%03d_wake_En',u);    
    name_deep_En = sprintf('ucd%03d_deep_En',u);

    
    if u~= 4 && u~= 16
        load(name_wake_En);       
        load(name_deep_En);

        
        %% 以下分出训练集和测试集,合并熵作为特征
        %% wake --------------------------------------------------------------------------------------
        data_wake_feature = [data_wake_ApEn, data_wake_SampEn, data_wake_SpectEn];
        data_wake_featuretrain = data_wake_feature(1:fix(0.6*size(data_wake_feature,1)) , :); 
        data_wake_featuretest = data_wake_feature(fix(0.6*size(data_wake_feature,1))+1: size(data_wake_feature,1), :);
        
        name_feature = sprintf('ucd%03d_wake_feature',u);
        save(name_feature,'data_wake_featuretrain','data_wake_featuretest','data_wake_feature');
        
        %% deep --------------------------------------------------------------------------------------
        data_deep_feature = [data_deep_ApEn, data_deep_SampEn, data_deep_SpectEn];  %三种熵合并一个变量,即特征向量
        data_deep_featuretrain = data_deep_feature(1:fix(0.6*size(data_deep_feature,1)) , :); 
        data_deep_featuretest = data_deep_feature(fix(0.6*size(data_deep_feature,1))+1: size(data_deep_feature,1), :);
        
        name_feature = sprintf('ucd%03d_deep_feature',u);
        save(name_feature,'data_deep_featuretrain','data_deep_featuretest','data_deep_feature');

    end
end













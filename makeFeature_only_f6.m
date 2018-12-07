clear
close all


%% ---可修改u  mix和mix  是否合并所有人的总特征  
for u = 2:28
    name_mix_En = sprintf('ucd%03d_mixf6_En',u);    
    name_wake_En = sprintf('ucd%03d_wakef6_En',u);
    name_deep_En = sprintf('ucd%03d_deepf6_En',u);
    
    if u~= 4 && u~= 16

        %% 以下分出训练集和测试集,合并熵作为特征
        %% mix --------------------------------------------------------------------------------------
        load(name_mix_En); 
        data_mix_feature = [data_mix_ApEn, data_mix_SampEn, data_mix_SpectEn];
        data_mix_featuretrain = data_mix_feature(1:2:size(data_mix_feature,1) , :); 
        data_mix_featuretest = data_mix_feature(2:2:size(data_mix_feature,1), :);
        
        name_feature = sprintf('ucd%03d_mixf6_feature',u);
        save(name_feature,'data_mix_featuretrain','data_mix_featuretest','data_mix_feature');
        
        %% wake --------------------------------------------------------------------------------------
        load(name_wake_En);
        data_wake_feature = [data_wake_ApEn, data_wake_SampEn, data_wake_SpectEn];  %三种熵合并一个变量,即特征向量
        data_wake_featuretrain = data_wake_feature(1:2:size(data_wake_feature,1), :); 
        data_wake_featuretest = data_wake_feature(2:2:size(data_wake_feature,1), :);
        
        name_feature = sprintf('ucd%03d_wakef6_feature',u);
        save(name_feature,'data_wake_featuretrain','data_wake_featuretest','data_wake_feature');
       %% deep --------------------------------------------------------------------------------------
        load(name_deep_En); 
        data_deep_feature = [data_deep_ApEn, data_deep_SampEn, data_deep_SpectEn];  %三种熵合并一个变量,即特征向量
        data_deep_featuretrain = data_deep_feature(1:2:size(data_deep_feature,1), :); 
        data_deep_featuretest = data_deep_feature(2:2:size(data_deep_feature,1), :);
        
        name_feature = sprintf('ucd%03d_deepf6_feature',u);
        save(name_feature,'data_deep_featuretrain','data_deep_featuretest','data_deep_feature');

    end
end













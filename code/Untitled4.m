
        data_deep_feature = [data_deep_ApEn, data_deep_SampEn, data_deep_SpectEn];  %�����غϲ�һ������,����������
        data_deep_featuretrain = data_deep_feature(1:fix(0.6*size(data_deep_feature,1)) , :); 
        data_deep_featuretest = data_deep_feature(fix(0.6*size(data_deep_feature,1))+1: size(data_deep_feature,1), :);
        
        name_feature = sprintf('ucd%03d_deepf5_feature',u);
        save(name_feature,'data_deep_featuretrain','data_deep_featuretest','data_deep_feature');

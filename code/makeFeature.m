clear
close all

ucd_wakef1_featuretrain=[];
ucd_wakef1_featuretest=[];
ucd_wakef2_featuretrain=[];
ucd_wakef2_featuretest=[];
ucd_wakef3_featuretrain=[];
ucd_wakef3_featuretest=[];
ucd_wakef4_featuretrain=[];
ucd_wakef4_featuretest=[];

%% ---可修改u  wake和wake  是否合并所有人的总特征
for u = 28
%     name_wakef1_En = sprintf('ucd%03d_wakef1_En',u);
%     name_wakef2_En = sprintf('ucd%03d_wakef2_En',u);
%     name_wakef3_En = sprintf('ucd%03d_wakef3_En',u);
%     name_wakef4_En = sprintf('ucd%03d_wakef4_En',u);
    
    name_wakef1_En = sprintf('ucd%03d_wakef1_En',u);
    name_wakef2_En = sprintf('ucd%03d_wakef2_En',u);
    name_wakef3_En = sprintf('ucd%03d_wakef3_En',u);
    name_wakef4_En = sprintf('ucd%03d_wakef4_En',u);
    
    if u~= 4 && u~= 16
%         load(name_wakef1_En);
%         load(name_wakef2_En);
%         load(name_wakef3_En);
%         load(name_wakef4_En);
        
        load(name_wakef1_En);
        load(name_wakef2_En);
        load(name_wakef3_En);
        load(name_wakef4_En);
        
        %% 以下分出训练集和测试集,合并熵作为特征
        %% wakef1 --------------------------------------------------------------------------------------
        data_wakef1_feature = [data_wakef1_ApEn, data_wakef1_SampEn, data_wakef1_SpectEn];
        data_wakef1_featuretrain = data_wakef1_feature(1:fix(0.6*size(data_wakef1_feature,1)) , :); 
        data_wakef1_featuretest = data_wakef1_feature(fix(0.6*size(data_wakef1_feature,1))+1: size(data_wakef1_feature,1), :);
        
        name_feature = sprintf('ucd%03d_wakef1_feature',u);
        save(name_feature,'data_wakef1_featuretrain','data_wakef1_featuretest','data_wakef1_feature');
        
%         ucd_wakef1_featuretrain = [ucd_wakef1_featuretrain; data_wakef1_featuretrain]; %合并总特征
%         ucd_wakef1_featuretest = [ucd_wakef1_featuretest; data_wakef1_featuretest];
        
%         %% wakef2
%         data_wakef2_feature = [data_wakef2_ApEn, data_wakef2_SampEn, data_wakef2_SpectEn];
%         data_wakef2_featuretrain = data_wakef2_feature(1:fix(0.6*size(data_wakef2_feature,1)) , :);
%         data_wakef2_featuretest = data_wakef2_feature(fix(0.6*size(data_wakef2_feature,1))+1: size(data_wakef2_feature,1), :);
%         
%         name_feature = sprintf('ucd%03d_wakef2_feature',u);
%         save(name_feature,'data_wakef2_featuretrain','data_wakef2_featuretest','data_wakef2_feature');
%         
% %         ucd_wakef2_featuretrain = [ucd_wakef2_featuretrain; data_wakef2_featuretrain];
% %         ucd_wakef2_featuretest = [ucd_wakef2_featuretest; data_wakef2_featuretest];    
%  
%         %% wakef3
%         data_wakef3_feature = [data_wakef3_ApEn, data_wakef3_SampEn, data_wakef3_SpectEn];
%         data_wakef3_featuretrain = data_wakef3_feature(1:fix(0.6*size(data_wakef3_feature,1)) , :);
%         data_wakef3_featuretest = data_wakef3_feature(fix(0.6*size(data_wakef3_feature,1))+1: size(data_wakef3_feature,1), :);
%         
%         name_feature = sprintf('ucd%03d_wakef3_feature',u);
%         save(name_feature,'data_wakef3_featuretrain','data_wakef3_featuretest','data_wakef3_feature');
%         
% %         ucd_wakef3_featuretrain = [ucd_wakef3_featuretrain; data_wakef3_featuretrain];
% %         ucd_wakef3_featuretest = [ucd_wakef3_featuretest; data_wakef3_featuretest];   
%         
%         %%  wakef4
%         data_wakef4_feature = [data_wakef4_ApEn, data_wakef4_SampEn, data_wakef4_SpectEn];
%         data_wakef4_featuretrain = data_wakef4_feature(1:fix(0.6*size(data_wakef4_feature,1)) , :);
%         data_wakef4_featuretest = data_wakef4_feature(fix(0.6*size(data_wakef4_feature,1))+1: size(data_wakef4_feature,1), :);
%         
%         name_feature = sprintf('ucd%03d_wakef4_feature',u);
%         save(name_feature,'data_wakef4_featuretrain','data_wakef4_featuretest','data_wakef4_feature');
        
%         ucd_wakef4_featuretrain = [ucd_wakef4_featuretrain; data_wakef4_featuretrain];
%         ucd_wakef4_featuretest = [ucd_wakef4_featuretest; data_wakef4_featuretest];           
        
    end
end
% save('ucd_wakef1_featuretrain','ucd_wakef1_featuretrain');
% save('ucd_wakef1_featuretest','ucd_wakef1_featuretest');
% 
% save('ucd_wakef2_featuretrain','ucd_wakef2_featuretrain');
% save('ucd_wakef2_featuretest','ucd_wakef2_featuretest');
% 
% save('ucd_wakef3_featuretrain','ucd_wakef3_featuretrain');
% save('ucd_wakef3_featuretest','ucd_wakef3_featuretest');
% 
% save('ucd_wakef4_featuretrain','ucd_wakef4_featuretrain');
% save('ucd_wakef4_featuretest','ucd_wakef4_featuretest');













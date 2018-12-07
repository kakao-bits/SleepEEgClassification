clear
close all

%% ----可修改u  m
for u = 3
    name_wake = sprintf('ucd%03d_wake_gf',u);
    name_deep = sprintf('ucd%03d_deep_gf',u);
    m=2;
    
    if u~= 4 && u~= 16
        load(name_wake);
        load(name_deep);
%         加载完数据
%         
%         开始制作熵 8个片段,每个片段的每个行向量进行制作熵,制作三种熵
                %% 1--------------------------------------------------
                data_deepf1_SpectEn = zeros(size(data_deepf1,1),1);
                data_deepf1_SampEn = zeros(size(data_deepf1,1),1);
                data_deepf1_ApEn = zeros(size(data_deepf1,1),1);

                for i = 1:size(data_deepf1,1)
                    data_deepf1_SpectEn(i) = SpectEn(data_deepf1(i,:),125);
                    data_deepf1_SampEn(i) = SampEntropy(m,(0.2*std(data_deepf1(i,:))),data_deepf1(i,:));
                    data_deepf1_ApEn(i) = ApEn(data_deepf1(i,:), m, 0.2);
                    
                end
                disp(1);
                name_deep = sprintf('ucd%03d_deepf1_En',u);
%                 save(name_deep,'data_deepf1_SpectEn','data_deepf1_SampEn','data_deepf1_ApEn');
        
%               %% 2--------------------------------------------------
%                 data_deepf2_SpectEn = zeros(size(data_deepf2,1),1);
%                 data_deepf2_SampEn = zeros(size(data_deepf2,1),1);
%                 data_deepf2_ApEn = zeros(size(data_deepf2,1),1);
%                 
%                 for i = 1:size(data_deepf2,1)
%                     data_deepf2_SpectEn(i) = SpectEn(data_deepf2(i,:),125);
%                     data_deepf2_SampEn(i) = SampEntropy(m,(0.2*std(data_deepf2(i,:))),data_deepf2(i,:));
%                     data_deepf2_ApEn(i) = ApEn(data_deepf2(i,:), m, 0.2);
%                     
%                 end
%                 disp(2);
%                 name_deep = sprintf('ucd%03d_deepf2_En',u);
%                 save(name_deep,'data_deepf2_SpectEn','data_deepf2_SampEn','data_deepf2_ApEn');
%        
%               %% 3--------------------------------------------------
%                 data_deepf3_SpectEn = zeros(size(data_deepf3,1),1);
%                 data_deepf3_SampEn = zeros(size(data_deepf3,1),1);
%                 data_deepf3_ApEn = zeros(size(data_deepf3,1),1);
%         
%                 for i = 1:size(data_deepf3,1)
%                     data_deepf3_SpectEn(i) = SpectEn(data_deepf3(i,:),125);
%                     data_deepf3_SampEn(i) = SampEntropy(m,(0.2*std(data_deepf3(i,:))),data_deepf3(i,:));
%                     data_deepf3_ApEn(i) = ApEn(data_deepf3(i,:), m, 0.2);
%                     
%                 end
%                 disp(3);
%                 name_deep = sprintf('ucd%03d_deepf3_En',u);
%                 save(name_deep,'data_deepf3_SpectEn','data_deepf3_SampEn','data_deepf3_ApEn');
%         
%         
%                %% 4--------------------------------------------------
%                 data_deepf4_SpectEn = zeros(size(data_deepf4,1),1);
%                 data_deepf4_SampEn = zeros(size(data_deepf4,1),1);
%                 data_deepf4_ApEn = zeros(size(data_deepf4,1),1);
%         
%                 for i = 1:size(data_deepf4,1)
%                     data_deepf4_SpectEn(i) = SpectEn(data_deepf4(i,:),125);
%                     data_deepf4_SampEn(i) = SampEntropy(m,(0.2*std(data_deepf4(i,:))),data_deepf4(i,:));
%                     data_deepf4_ApEn(i) = ApEn(data_deepf4(i,:), m, 0.2);
%                    
%                 end
%                  disp(4); 
%                 name_deep = sprintf('ucd%03d_deepf4_En',u);
%                 save(name_deep,'data_deepf4_SpectEn','data_deepf4_SampEn','data_deepf4_ApEn');
                
              %% 5--------------------------------------------------
%                 data_wakef1_SpectEn = zeros(size(data_wakef1,1),1);
%                 data_wakef1_SampEn = zeros(size(data_wakef1,1),1);
%                 data_wakef1_ApEn = zeros(size(data_wakef1,1),1);
%                 
%                 for i = 1:size(data_wakef1,1)
%                     data_wakef1_SpectEn(i) = SpectEn(data_wakef1(i,:),125);
%                     data_wakef1_SampEn(i) = SampEntropy(m,(0.2*std(data_wakef1(i,:))),data_wakef1(i,:));
%                     data_wakef1_ApEn(i) = ApEn(data_wakef1(i,:), m, 0.2);
%                    
%                 end
%                 disp(5);
%                 name_wake = sprintf('ucd%03d_wakef1_En',u);
%                 save(name_wake,'data_wakef1_SpectEn','data_wakef1_SampEn','data_wakef1_ApEn');
                
%                %% 6--------------------------------------------------
%                 data_wakef2_SpectEn = zeros(size(data_wakef2,1),1);
%                 data_wakef2_SampEn = zeros(size(data_wakef2,1),1);
%                 data_wakef2_ApEn = zeros(size(data_wakef2,1),1);
%                 
%                 for i = 1:size(data_wakef2,1)
%                     data_wakef2_SpectEn(i) = SpectEn(data_wakef2(i,:),125);
%                     data_wakef2_SampEn(i) = SampEntropy(m,(0.2*std(data_wakef2(i,:))),data_wakef2(i,:));
%                     data_wakef2_ApEn(i) = ApEn(data_wakef2(i,:), m, 0.2);
%                     
%                 end
%                 disp(6);
%                 name_wake = sprintf('ucd%03d_wakef2_En',u);
%                 save(name_wake,'data_wakef2_SpectEn','data_wakef2_SampEn','data_wakef2_ApEn');
%                 
%                 
%               %% 7--------------------------------------------------
%                 data_wakef3_SpectEn = zeros(size(data_wakef3,1),1);
%                 data_wakef3_SampEn = zeros(size(data_wakef3,1),1);
%                 data_wakef3_ApEn = zeros(size(data_wakef3,1),1);
%                 
%                 for i = 1:size(data_wakef3,1)
%                     data_wakef3_SpectEn(i) = SpectEn(data_wakef3(i,:),125);
%                     data_wakef3_SampEn(i) = SampEntropy(m,(0.2*std(data_wakef3(i,:))),data_wakef3(i,:));
%                     data_wakef3_ApEn(i) = ApEn(data_wakef3(i,:), m, 0.2);
%                     
%                 end
%                 disp(7);
%                 name_wake = sprintf('ucd%03d_wakef3_En',u);
%                 save(name_wake,'data_wakef3_SpectEn','data_wakef3_SampEn','data_wakef3_ApEn');
%                 
%                 
%                %% 8--------------------------------------------------
%                 data_wakef4_SpectEn = zeros(size(data_wakef4,1),1);
%                 data_wakef4_SampEn = zeros(size(data_wakef4,1),1);
%                 data_wakef4_ApEn = zeros(size(data_wakef4,1),1);
%                 
%                 for i = 1:size(data_wakef4,1)
%                     data_wakef4_SpectEn(i) = SpectEn(data_wakef4(i,:),125);
%                     data_wakef4_SampEn(i) = SampEntropy(m,(0.2*std(data_wakef4(i,:))),data_wakef4(i,:));
%                     data_wakef4_ApEn(i) = ApEn(data_wakef4(i,:), m, 0.2);
%                 end
%                 disp(8);
%                 name_wake = sprintf('ucd%03d_wakef4_En',u);
%                 save(name_wake,'data_wakef4_SpectEn','data_wakef4_SampEn','data_wakef4_ApEn');
           
        
    end
end
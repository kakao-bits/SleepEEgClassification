clear
close all

%% ----可修改u  m   
m=2;
for u = 3  %准备  11好 12好 13 14  17 19
    name_deep = sprintf('ucd%03d_deep_g',u);
    name_mix = sprintf('ucd%03d_mix_g',u);
    name_wake = sprintf('ucd%03d_wake_g',u);
    
    if u~= 4 && u~= 16
        load(name_deep);
        load(name_mix);
        load(name_wake);
        %         加载完数据
        %
        %         开始制作熵 ,每个行向量(即时间窗) 进行制作熵,制作三种熵
        data_deep = eval(name_deep);
        data_mix = eval(name_mix);
        data_wake = eval(name_wake);
        
        %% ----   首先 0.5-30Hz 滤波  0.5-30Hz 滤波  0.5-30Hz 滤波   主要目的是滤除0.5Hz以下-----------------
        
        data_deep = ucdfilter(data_deep,6);       
        data_mix = ucdfilter(data_mix,6);      
        data_wake = ucdfilter(data_wake,6);
        
        %% deep--------------------------------------------------
%         data_deep_SpectEn = zeros(size(data_deep,1),1); %变量初始化, 
%         data_deep_SampEn = zeros(size(data_deep,1),1);
%         data_deep_ApEn = zeros(size(data_deep,1),1);
%         
%         for i = 1:size(data_deep,1)
%             data_deep_SpectEn(i) = SpectEn(data_deep(i,:),128);
%             data_deep_SampEn(i) = SampEntropy(m,(0.2*std(data_deep(i,:))),data_deep(i,:));
%             data_deep_ApEn(i) = ApEn(data_deep(i,:), m, 0.2);
%             i
%         end
%         disp(1);
%         name_deep = sprintf('ucd%03d_deepf6_En',u);
%         save(name_deep,'data_deep_SpectEn','data_deep_SampEn','data_deep_ApEn');

        %% mix--------------------------------------------------
        data_mix_SpectEn = zeros(size(data_mix,1),1); %变量初始化, 
        data_mix_SampEn = zeros(size(data_mix,1),1);
        data_mix_ApEn = zeros(size(data_mix,1),1);
        
        for i = 1:size(data_mix,1)
            data_mix_SpectEn(i) = SpectEn(data_mix(i,:),128);
            data_mix_SampEn(i) = SampEntropy(m,(0.2*std(data_mix(i,:))),data_mix(i,:));
            data_mix_ApEn(i) = ApEn(data_mix(i,:), m, 0.2);
            i
        end
        disp(1);
        name_mix = sprintf('ucd%03d_mixf6_En',u);
        save(name_mix,'data_mix_SpectEn','data_mix_SampEn','data_mix_ApEn');
        %% wake--------------------------------------------------
%         data_wake_SpectEn = zeros(size(data_wake,1),1); %变量初始化, 
%         data_wake_SampEn = zeros(size(data_wake,1),1);
%         data_wake_ApEn = zeros(size(data_wake,1),1);
%         
%         for i = 1:size(data_wake,1)
%             data_wake_SpectEn(i) = SpectEn(data_wake(i,:),128);
%             data_wake_SampEn(i) = SampEntropy(m,(0.2*std(data_wake(i,:))),data_wake(i,:));
%             data_wake_ApEn(i) = ApEn(data_wake(i,:), m, 0.2);
%             i
%         end
%         disp(1);
%         name_wake = sprintf('ucd%03d_wakef6_En',u);
%         save(name_wake,'data_wake_SpectEn','data_wake_SampEn','data_wake_ApEn');
        
    end
end


clear
close all

%% ----���޸�u  m
m=2;
for u = 18
    name_wake = sprintf('ucd%03d_wake_g',u);
    name_deep = sprintf('ucd%03d_deep_g',u);
       
    if u~= 4 && u~= 16
        load(name_wake);
        load(name_deep);
        %         ����������
        %
        %         ��ʼ������ ,ÿ��������(��ʱ�䴰) ����������,����������
        data_deep = eval(name_deep);
        data_wake = eval(name_wake);
        
        %% ----   ���� 1-30Hz �˲�  1-30Hz �˲�  1-30Hz �˲�   ��ҪĿ�����˳�1Hz����-----------------
%         data_deeptemp = data_deep;
%         data_deep = ucdfilter(data_deeptemp,5);
%         data_waketemp = data_wake;
%         data_wake = ucdfilter(data_waketemp,5);     
        
        %% deep--------------------------------------------------
        data_deep_SpectEn = zeros(size(data_deep,1),1); %������ʼ��, 
        data_deep_SampEn = zeros(size(data_deep,1),1);
        data_deep_ApEn = zeros(size(data_deep,1),1);
        
        for i = 1:size(data_deep,1)
            data_deep_SpectEn(i) = SpectEn(data_deep(i,:),125);
            data_deep_SampEn(i) = SampEntropy(m,(0.2*std(data_deep(i,:))),data_deep(i,:));
            data_deep_ApEn(i) = ApEn(data_deep(i,:), m, 0.2);
            i
        end
        disp(1);
        name_deep = sprintf('ucd%03d_deep_En',u);
        save(name_deep,'data_deep_SpectEn','data_deep_SampEn','data_deep_ApEn');
        
        %% wake--------------------------------------------------      
        data_wake_SpectEn = zeros(size(data_wake,1),1);
        data_wake_SampEn = zeros(size(data_wake,1),1);
        data_wake_ApEn = zeros(size(data_wake,1),1);
        
        for i = 1:size(data_wake,1)
            data_wake_SpectEn(i) = SpectEn(data_wake(i,:),128);
            data_wake_SampEn(i) = SampEntropy(m,(0.2*std(data_wake(i,:))),data_wake(i,:));
            data_wake_ApEn(i) = ApEn(data_wake(i,:), m, 0.2);
            i
        end
        disp(1);
        name_wake = sprintf('ucd%03d_wake_En',u);
        save(name_wake,'data_wake_SpectEn','data_wake_SampEn','data_wake_ApEn');

    end
end
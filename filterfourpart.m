
clear 
close all
for u = 28
    name_wake = sprintf('ucd%03d_wake_g',u);
    name_deep = sprintf('ucd%03d_deep_g',u);
    
    if u~= 4 && u~= 16
        load(name_wake);
        load(name_deep);
         %加载完数据        
        data_wake = eval(name_wake); %字符串转换为变量名
        data_deep = eval(name_deep);
        
        data_wakef1 = ucdfilter(data_wake,1); %
        data_wakef2 = ucdfilter(data_wake,2);
        data_wakef3 = ucdfilter(data_wake,3);
        data_wakef4 = ucdfilter(data_wake,4);
%         保存变量
%         name_wake = sprintf('%sf',name_wake);
%         save(name_wake,'data_wakef1','data_wakef2','data_wakef3','data_wakef4'); %四个频段的数据保存为一个文件

 
        data_deepf1 = ucdfilter(data_deep,1);
        data_deepf2 = ucdfilter(data_deep,2);
        data_deepf3 = ucdfilter(data_deep,3);
        data_deepf4 = ucdfilter(data_deep,4);
        
        name_deep = sprintf('%sf',name_deep);
%         save(name_deep,'data_deepf1','data_deepf2','data_deepf3','data_deepf4');

%% f1频段分别画出睡眠和清醒的----------------------------------------------------------        
        for i = 1:size(50)
            figure,
            set (gcf,'Position',[100,800,1800,300], 'color','b')
            plot(data_deepf1(i,:));
            axis([-100,4000,-2,2]);
        end
        for i = 1:size(50)
            figure,
            set (gcf,'Position',[100,100,1800,300], 'color','w')
            plot(data_wakef1(i,:));
            axis([-100,4000,-2,2]);
        end
        
%% --------------------------------------        
        for i = 1:size(data_deepf2,1)
            
        end
        for i = 1:size(data_deepf3,1)
            
        end       
        for i = 1:size(data_deepf4,1)
            
        end
        
        
    end   
end
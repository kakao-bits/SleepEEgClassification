clear
close all

%%  ---  已经完成 2 3 15  18  20  22  一共六个被试
load('ucd020_deep_feature.mat')
load('ucd020_wake_feature.mat')
load('ucd020_wake_g.mat')
k=1;
t = [];
ii =[];
ucd020_wake_gSmall=[];

for i = 1:size(data_wake_feature,1)
    if ~isempty( find( data_wake_feature(i,1)<=0.9 && data_wake_feature(i,2)<=0.9) )
        t(k,:) = data_wake_feature(i,:);
%         k = k+1;

       ucd020_wake_gSmall(k,:) = ucd020_wake_g(i,:);
       ii(k) = i;
       
       
       figure,
       set (gcf,'Position',[100,100,1800,300], 'color','w')
       plot(ucd020_wake_gSmall((k),:));      
       axis([-100,4000,-2,2]);
       
       figure,
       dataf = ucdfilter(ucd020_wake_gSmall((k),:),5);
       set (gcf,'Position',[100,500,1800,300], 'color','w')
       plot(dataf);
       axis([-100,4000,-2,2]);
       
       k = k+1;
    end
end

% ucd020_wake_feature(ii,:) = [];  %去除不好的数据的特征点

figure,
scatter3(t(:,1), t(:,2), t(:,3),'*'), hold on
% scatter3(data_wake_feature(:,1), data_wake_feature(:,2), data_wake_feature(:,3),'o');hold on
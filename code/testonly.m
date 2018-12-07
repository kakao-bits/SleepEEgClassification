

clear
close all

load('ucd028_deepf3_feature.mat')
load('ucd028_wakef3_feature.mat')

scatter3(data_deepf3_feature(:,1), data_deepf3_feature(:,2), data_deepf3_feature(:,3)), hold on
scatter3(data_wakef3_feature(:,1), data_wakef3_feature(:,2), data_wakef3_feature(:,3));

xlabel('½üËÆìØ'),ylabel('Ñù±¾ìØ'),zlabel('ÆµÆ×ìØ')
% axis([0,1,0,1,0,1]);


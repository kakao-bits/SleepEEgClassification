
clear 
clc
close all
 

%ĞŞ¸Äf3 f1 f2 f4

load('ucd_wakef1_featuretrain.mat')
load('ucd_deepf1_featuretrain.mat')

wakedata = ucd_wakef1_featuretrain;
deepdata = ucd_deepf1_featuretrain;

figure,
scatter3(wakedata(:,1),wakedata(:,2),wakedata(:,3)),hold on
scatter3(deepdata(:,1),deepdata(:,2),deepdata(:,3))

xlabel('½üËÆìØ'),ylabel('Ñù±¾ìØ'),zlabel('ÆµÆ×ìØ')
axis([0,1,0,1,0,1]);
%% --------------------------------
load('ucd_wakef2_featuretrain.mat')
load('ucd_deepf2_featuretrain.mat')

wakedata = ucd_wakef2_featuretrain;
deepdata = ucd_deepf2_featuretrain;

figure,
scatter3(wakedata(:,1),wakedata(:,2),wakedata(:,3)),hold on
scatter3(deepdata(:,1),deepdata(:,2),deepdata(:,3))
xlabel('½üËÆìØ'),ylabel('Ñù±¾ìØ'),zlabel('ÆµÆ×ìØ')
axis([0,1,0,1,0,1]);
%% --------------------------------
load('ucd_wakef3_featuretrain.mat')
load('ucd_deepf3_featuretrain.mat')

wakedata = ucd_wakef3_featuretrain;
deepdata = ucd_deepf3_featuretrain;

figure,
scatter3(wakedata(:,1),wakedata(:,2),wakedata(:,3)),hold on
scatter3(deepdata(:,1),deepdata(:,2),deepdata(:,3))
xlabel('½üËÆìØ'),ylabel('Ñù±¾ìØ'),zlabel('ÆµÆ×ìØ')
axis([0,1,0,1,0,1]);
%% --------------------------------
load('ucd_wakef4_featuretrain.mat')
load('ucd_deepf4_featuretrain.mat')

wakedata = ucd_wakef4_featuretrain;
deepdata = ucd_deepf4_featuretrain;

figure,
scatter3(wakedata(:,1),wakedata(:,2),wakedata(:,3)),hold on
scatter3(deepdata(:,1),deepdata(:,2),deepdata(:,3))
xlabel('½üËÆìØ'),ylabel('Ñù±¾ìØ'),zlabel('ÆµÆ×ìØ')
axis([0,1,0,1,0,1]);



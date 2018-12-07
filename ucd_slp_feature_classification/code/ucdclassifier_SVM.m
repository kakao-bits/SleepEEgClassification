clear
close all
%%  简单测试, 没写函数 每个被试复制同样加载处理数据过程(好傻逼), 在ucd_SVM里面优化
Label=[];
datatrain=[];

for u = [20 2 15 18 22 3]
    [datatrain , Label] = ucd_trainfeature(u,datatrain,Label);
end
%%  ---  已经完成 003  022  015  028  020  002(前6个被试的训练集用于训练)  (23 - 28) 028  ; 中午( 6 7 8 9) 下午(10 11 12 13 14 17 19 21)
% scatter3(data_deep_feature(:,1), data_deep_feature(:,2), data_deep_feature(:,3),'r*'), hold on
% scatter3(data_mix_feature(:,1), data_mix_feature(:,2), data_mix_feature(:,3),'bo');hold on
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'bo');hold on
% xlabel('近似熵'),ylabel('样本熵'),zlabel('频谱熵')


% %% 加载数据1---------------------------
% figure,
% 
% load('ucd020_deepf6_feature.mat')
% load('ucd020_mixf6_feature.mat')
% load('ucd020_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %延长.合并浅睡和清醒期特征 训练
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [deepLabel;mixLabel];
% datatrain = [data_deep_featuretrain;data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% %% 加载数据2-----------------------------
% load('ucd022_deepf6_feature.mat')
% load('ucd022_mixf6_feature.mat')
% load('ucd022_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %延长.合并浅睡和清醒期特征 训练
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% %% 加载数据3-----------------------------
% load('ucd028_deepf6_feature.mat')
% load('ucd028_mixf6_feature.mat')
% load('ucd028_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %延长.合并浅睡和清醒期特征 训练
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% 
% %% 加载数据4-----------------------------
% load('ucd015_deepf6_feature.mat')
% load('ucd015_mixf6_feature.mat')
% load('ucd015_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %延长.合并浅睡和清醒期特征 训练
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% 
% %% 加载数据5-----------------------------
% load('ucd003_deepf6_feature.mat')
% load('ucd003_mixf6_feature.mat')
% load('ucd003_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %延长.合并浅睡和清醒期特征 训练
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% 
% %% 加载数据6-----------------------------
% load('ucd002_deepf6_feature.mat')
% load('ucd002_mixf6_feature.mat')
% load('ucd002_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %延长.合并浅睡和清醒期特征 训练
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on

%% 训练------------------------
% SVMModel = svmtrain(datatrain,Label,'kernel_function','rbf');
SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf');
% SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf','GapTolerance',5e-2);
sv = SVMModel.SupportVectors;

%% 画图---------------------------------

% hold on
% plot3(sv(:,1),sv(:,2),sv(:,3), 'ko','MarkerSize',10);
% legend('deep','mix');
% xlabel('近似熵'),ylabel('样本熵'),zlabel('频谱熵');


% d = 0.01;
% [x1Grid,x2Grid,x3Grid] = meshgrid(min(datatrain(:,1)):d:max(datatrain(:,1)),...
%     min(datatrain(:,2)):d:max(datatrain(:,2)), min(datatrain(:,3)):d:max(datatrain(:,3)));
% xGrid = [x1Grid(:),x2Grid(:),x3Grid(:)];
% [~,scores] = predict(SVMModel,xGrid);
% 
% v = reshape(scores(:,2),size(x1Grid));
% p = patch(isosurface(v,0));%把其中值为-3的等高面画出来
% isonormals(v, p)%该语句可使曲面光滑，下面是一些光影设置
% set(p, 'FaceColor', 'red', 'EdgeColor', 'none');
% view(3)
% camlight; lighting phong
% contour(x1Grid,x2Grid,x3Grid,reshape(scores(:,2),size(x1Grid)),[0 0],'k'); %等高线图
%% 预测-------------------------------
test_N = 0;
deep_count=0;
mix_count=0;
%% 测试1---------------------------------------------------
% load('ucd002_deepf6_feature.mat')
% load('ucd002_mixf6_feature.mat')
% load('ucd002_wakef6_feature.mat')
% data_mix_featuretest = [data_mix_featuretest; data_wake_featuretest];
% 
% deep_N = size(data_deep_featuretest,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_featuretest(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_featuretest,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_featuretest(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end
% 
% %% 测试2----------------------------------------
% load('ucd003_deepf6_feature.mat')
% load('ucd003_mixf6_feature.mat')
% load('ucd003_wakef6_feature.mat')
% data_mix_featuretest = [data_mix_featuretest; data_wake_featuretest];
% 
% deep_N = size(data_deep_featuretest,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_featuretest(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_featuretest,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_featuretest(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end
% 
% %% 测试3----------------------------------------
% load('ucd015_deepf6_feature.mat')
% load('ucd015_mixf6_feature.mat')
% load('ucd015_wakef6_feature.mat')
% data_mix_featuretest = [data_mix_featuretest; data_wake_featuretest];
% 
% deep_N = size(data_deep_featuretest,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_featuretest(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_featuretest,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_featuretest(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end
% 
% %% 测试4----------------------------------------
% load('ucd028_deepf6_feature.mat')
% load('ucd028_mixf6_feature.mat')
% load('ucd028_wakef6_feature.mat')
% data_mix_featuretest = [data_mix_featuretest; data_wake_featuretest];
% 
% deep_N = size(data_deep_featuretest,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_featuretest(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_featuretest,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_featuretest(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end
% 
% %% 测试5----------------------------------------
% load('ucd020_deepf6_feature.mat')
% load('ucd020_mixf6_feature.mat')
% load('ucd020_wakef6_feature.mat')
% data_mix_featuretest = [data_mix_featuretest; data_wake_featuretest];
% 
% deep_N = size(data_deep_featuretest,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_featuretest(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_featuretest,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_featuretest(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end
% 
% 
% %% 测试6----------------------------------------
% load('ucd022_deepf6_feature.mat')
% load('ucd022_mixf6_feature.mat')
% load('ucd022_wakef6_feature.mat')
% data_mix_featuretest = [data_mix_featuretest; data_wake_featuretest];
% 
% deep_N = size(data_deep_featuretest,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_featuretest(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_featuretest,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_featuretest(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end
% test_accuracy = (deep_count + mix_count)/test_N; %  '准确数量' 除以 '测试总数' 
% %% 测试7  被试028全部特征包括测试集和训练集----------------------------------------
% load('ucd028_deepf6_feature.mat')
% load('ucd028_mixf6_feature.mat')
% load('ucd028_wakef6_feature.mat')
% data_mix_feature = [data_mix_feature; data_wake_feature];
% 
% deep_N = size(data_deep_feature,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_feature(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_feature,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_feature(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end

%% 测试8  被试028全部特征包括测试集和训练集----------------------------------------
% load('ucd002_deepf6_feature.mat')
% load('ucd002_mixf6_feature.mat')
% load('ucd002_wakef6_feature.mat')
% data_mix_feature = [data_mix_featuretrain; data_wake_featuretrain];
% 
% deep_N = size(data_deep_featuretrain,1);
% test_N = test_N + deep_N;
% for i = 1:deep_N
%     [testlabel,testscores] = predict(SVMModel,data_deep_featuretrain(i,:));
%     deep_count = deep_count + strcmp(testlabel,'deep');
% end
% mix_N = size(data_mix_feature,1);
% test_N = test_N + mix_N;
% for i = 1:mix_N
%     [testlabel,testscores] = predict(SVMModel,data_mix_feature(i,:));
%     mix_count = mix_count + strcmp(testlabel,'mix');
% end

[deep_count,mix_count,test_N] = ucd_testfeature(15,SVMModel,deep_count,mix_count,test_N);
%%  测试集的准确率------------------------------------------
test_accuracy = (deep_count + mix_count)/test_N; %  '准确数量' 除以 '测试总数' 
 
%%  晚上(23 - 28) 5   中午( 6 7 8 9)  下午(10 11 12 13 14 17 19 21)  总共19个被试总集全部用于测试

%%   糟糕数据集: 10 (低于80%)


















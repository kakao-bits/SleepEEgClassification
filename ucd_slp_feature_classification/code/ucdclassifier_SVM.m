clear
close all
%%  �򵥲���, ûд���� ÿ�����Ը���ͬ�����ش������ݹ���(��ɵ��), ��ucd_SVM�����Ż�
Label=[];
datatrain=[];

for u = [20 2 15 18 22 3]
    [datatrain , Label] = ucd_trainfeature(u,datatrain,Label);
end
%%  ---  �Ѿ���� 003  022  015  028  020  002(ǰ6�����Ե�ѵ��������ѵ��)  (23 - 28) 028  ; ����( 6 7 8 9) ����(10 11 12 13 14 17 19 21)
% scatter3(data_deep_feature(:,1), data_deep_feature(:,2), data_deep_feature(:,3),'r*'), hold on
% scatter3(data_mix_feature(:,1), data_mix_feature(:,2), data_mix_feature(:,3),'bo');hold on
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'bo');hold on
% xlabel('������'),ylabel('������'),zlabel('Ƶ����')


% %% ��������1---------------------------
% figure,
% 
% load('ucd020_deepf6_feature.mat')
% load('ucd020_mixf6_feature.mat')
% load('ucd020_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %�ӳ�.�ϲ�ǳ˯������������ ѵ��
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [deepLabel;mixLabel];
% datatrain = [data_deep_featuretrain;data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% %% ��������2-----------------------------
% load('ucd022_deepf6_feature.mat')
% load('ucd022_mixf6_feature.mat')
% load('ucd022_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %�ӳ�.�ϲ�ǳ˯������������ ѵ��
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% %% ��������3-----------------------------
% load('ucd028_deepf6_feature.mat')
% load('ucd028_mixf6_feature.mat')
% load('ucd028_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %�ӳ�.�ϲ�ǳ˯������������ ѵ��
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% 
% %% ��������4-----------------------------
% load('ucd015_deepf6_feature.mat')
% load('ucd015_mixf6_feature.mat')
% load('ucd015_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %�ӳ�.�ϲ�ǳ˯������������ ѵ��
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% 
% %% ��������5-----------------------------
% load('ucd003_deepf6_feature.mat')
% load('ucd003_mixf6_feature.mat')
% load('ucd003_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %�ӳ�.�ϲ�ǳ˯������������ ѵ��
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on
% 
% %% ��������6-----------------------------
% load('ucd002_deepf6_feature.mat')
% load('ucd002_mixf6_feature.mat')
% load('ucd002_wakef6_feature.mat')
% data_mix_featuretrain = [data_mix_featuretrain; data_wake_featuretrain]; %�ӳ�.�ϲ�ǳ˯������������ ѵ��
% 
% deepLabel = repmat({'deep'}, size(data_deep_featuretrain,1),1);
% mixLabel = repmat({'mix'}, size(data_mix_featuretrain,1),1);
% Label = [Label; deepLabel; mixLabel];
% datatrain = [datatrain; data_deep_featuretrain; data_mix_featuretrain];
% scatter3(data_deep_featuretrain(:,1), data_deep_featuretrain(:,2), data_deep_featuretrain(:,3),'r*'), hold on
% scatter3(data_mix_featuretrain(:,1), data_mix_featuretrain(:,2), data_mix_featuretrain(:,3),'b*');hold on

%% ѵ��------------------------
% SVMModel = svmtrain(datatrain,Label,'kernel_function','rbf');
SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf');
% SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf','GapTolerance',5e-2);
sv = SVMModel.SupportVectors;

%% ��ͼ---------------------------------

% hold on
% plot3(sv(:,1),sv(:,2),sv(:,3), 'ko','MarkerSize',10);
% legend('deep','mix');
% xlabel('������'),ylabel('������'),zlabel('Ƶ����');


% d = 0.01;
% [x1Grid,x2Grid,x3Grid] = meshgrid(min(datatrain(:,1)):d:max(datatrain(:,1)),...
%     min(datatrain(:,2)):d:max(datatrain(:,2)), min(datatrain(:,3)):d:max(datatrain(:,3)));
% xGrid = [x1Grid(:),x2Grid(:),x3Grid(:)];
% [~,scores] = predict(SVMModel,xGrid);
% 
% v = reshape(scores(:,2),size(x1Grid));
% p = patch(isosurface(v,0));%������ֵΪ-3�ĵȸ��滭����
% isonormals(v, p)%������ʹ����⻬��������һЩ��Ӱ����
% set(p, 'FaceColor', 'red', 'EdgeColor', 'none');
% view(3)
% camlight; lighting phong
% contour(x1Grid,x2Grid,x3Grid,reshape(scores(:,2),size(x1Grid)),[0 0],'k'); %�ȸ���ͼ
%% Ԥ��-------------------------------
test_N = 0;
deep_count=0;
mix_count=0;
%% ����1---------------------------------------------------
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
% %% ����2----------------------------------------
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
% %% ����3----------------------------------------
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
% %% ����4----------------------------------------
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
% %% ����5----------------------------------------
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
% %% ����6----------------------------------------
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
% test_accuracy = (deep_count + mix_count)/test_N; %  '׼ȷ����' ���� '��������' 
% %% ����7  ����028ȫ�������������Լ���ѵ����----------------------------------------
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

%% ����8  ����028ȫ�������������Լ���ѵ����----------------------------------------
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
%%  ���Լ���׼ȷ��------------------------------------------
test_accuracy = (deep_count + mix_count)/test_N; %  '׼ȷ����' ���� '��������' 
 
%%  ����(23 - 28) 5   ����( 6 7 8 9)  ����(10 11 12 13 14 17 19 21)  �ܹ�19�������ܼ�ȫ�����ڲ���

%%   ������ݼ�: 10 (����80%)


















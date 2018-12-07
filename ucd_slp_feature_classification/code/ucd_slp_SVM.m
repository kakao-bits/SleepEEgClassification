clear
close all

%%  ---  已经完成 3  22  15  18  20 2(前6个被试的训练集用于训练)  (23 - 28) 5  ; 中午( 6 7 8 9) 下午(10 11 12 13 14 17 19 21)
%  晚上(23 - 28) 5   中午( 6 7 8 9)  下午(10 11 12 13 14 17 19 21)  总共19个被试总集全部用于测试
%  糟糕数据集: 10 (低于80%)
Label=[];
datatrain=[];
datatrain_CG=[];

%% 准备训练数据
trainset1= [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22]; %全部被试,剔除10号被试
trainset2 = [20 2 15 18 22 3];
trainset3= [5 6 11 19 25 26];
for u = trainset2
    [datatrain ,datatrain_CG, Label] = ucd_trainfeature_coarse_grain(u,datatrain,datatrain_CG,Label,1); %降采样倍数
end
% for u = 2
%     [datatrain , Label] = slp_trainfeature(u,datatrain,Label,3); %降采样倍数 使两类数据的训练数量基本一致
% end
traindeepCount = sum(ismember(Label,'deep'));

%% 训练------------------------
% SVMModel = fitcsvm(datatrain,Label);
% SVMModel = fitcsvm(datatrain_CG,Label, 'KernelFunction','rbf');
SVMModel = fitcsvm(datatrain_CG,Label,'KernelFunction','rbf','KernelScale','auto','GapTolerance',0.8);
sv = SVMModel.SupportVectors;
%% 画图---------------------------------
% 
% hold on
% plot3(sv(:,1),sv(:,2),sv(:,3), 'ko','MarkerSize',10);
% legend('deep','mix');
% xlabel('近似熵'),ylabel('样本熵'),zlabel('频谱熵');
% %% 预测-------------------------------
test_N_deep = 0;
test_N_wake = 0;
test_N_mix = 0;

deep_count=0;
mix_count=0;

testset3 = [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22];  %全部被试,剔除10号被试
testset1 = [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28];
testset2 = [2 3 15 18 20 22];
testset4 = [12 13 14 17 21 7 8 9 23 24 27 28 2 3 15 18 20 22];
for k = testset2
    [deep_count,mix_count,test_N_deep,test_N_mix] = ucd_testfeature_coarse_grain(k,SVMModel,deep_count,mix_count,test_N_deep,test_N_mix);
end

% for k = 20
%     [deep_count,mix_count,test_N_deep,test_N_mix] = ucd_testfeature(k,SVMModel,deep_count,mix_count,test_N_deep,test_N_mix);
% end

% for k = 1
%     [deep_count,mix_count,test_N_deep,test_N_wake] = slp_testfeature(k,SVMModel,deep_count,mix_count,test_N_deep,test_N_wake);
% end

%  测试集的准确率------------------------------------------
test_mix_accuracy = (mix_count)/(test_N_mix + test_N_wake)    %   
test_deep_accuracy = (deep_count)/(test_N_deep)    %  


















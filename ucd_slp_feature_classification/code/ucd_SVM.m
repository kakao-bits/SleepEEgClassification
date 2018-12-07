clear
close all
%%  ucd数据集
%%  ---  已经完成 3  22  15  18  20 2(前6个被试的训练集用于训练)  (23 - 28) 5  ; 中午( 6 7 8 9) 下午(10 11 12 13 14 17 19 21)
%  晚上(23 - 28) 5   中午( 6 7 8 9)  下午(10 11 12 13 14 17 19 21)  总共19个被试总集全部用于测试
%   糟糕数据集: 10 (低于80%)
Label=[];
datatrain=[];

%% 准备训练数据
trainset1= [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22]; %全部被试,剔除10号被试
trainset2 = [20 2 15 18 22 3];
for u = trainset1
    [datatrain , Label] = ucd_trainfeature(u,datatrain,Label,4); %降采样倍数
end
for u = 1:13
    [datatrain , Label] = slp_trainfeature(u,datatrain,Label,15); %降采样倍数
end
traindeepCount = sum(ismember(Label,'deep'));
%% 训练------------------------
% SVMModel = svmtrain(datatrain,Label,'kernel_function','rbf');
SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf');
% SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf','GapTolerance',5e-2);
sv = SVMModel.SupportVectors;

%% 预测-------------------------------
test_N = 0;
deep_count=0;
mix_count=0;

testset3 = [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22];  %全部被试,剔除10号被试
testset1 = [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28];
testset2 = [2 3 15 18 20 22];
for k = testset1
    [deep_count,mix_count,test_N] = ucd_testfeature(k,SVMModel,deep_count,mix_count,test_N);
end
%%  测试集的准确率------------------------------------------
test_accuracy = (deep_count)/test_N    %  'deep准确数量' 除以 '测试deep总数' 
 


















clear
close all

Label=[];
datatrain=[];

%% 准备训练数据
trainset1= []; 
trainset2 = [];
trainset3 = [1 2 3 4 5 6 7];
for u = 1:13
    [datatrain , Label] = slp_trainfeature(u,datatrain,Label,15); %降采样倍数
end

%% 训练------------------------
% SVMModel = svmtrain(datatrain,Label,'kernel_function','rbf');
SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf');
% SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf','GapTolerance',5e-2);
sv = SVMModel.SupportVectors;
traindeepCount = sum(ismember(Label,'deep'));
%% 预测-------------------------------
test_N = 0;
deep_count=0;
wake_count=0;

testset3 = [];  %全部被试,剔除10号被试
testset1 = [];
testset2 = [1 2 3 4];
for k = 1:13
    [deep_count,wake_count,test_N] = slp_testfeature(k,SVMModel,deep_count,wake_count,test_N);
end
%%  测试集的准确率------------------------------------------
test_accuracy = (deep_count )/test_N    %  '准确数量' 除以 '测试总数' 
 



















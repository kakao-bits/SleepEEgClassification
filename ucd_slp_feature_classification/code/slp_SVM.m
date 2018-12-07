clear
close all

Label=[];
datatrain=[];

%% ׼��ѵ������
trainset1= []; 
trainset2 = [];
trainset3 = [1 2 3 4 5 6 7];
for u = 1:13
    [datatrain , Label] = slp_trainfeature(u,datatrain,Label,15); %����������
end

%% ѵ��------------------------
% SVMModel = svmtrain(datatrain,Label,'kernel_function','rbf');
SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf');
% SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf','GapTolerance',5e-2);
sv = SVMModel.SupportVectors;
traindeepCount = sum(ismember(Label,'deep'));
%% Ԥ��-------------------------------
test_N = 0;
deep_count=0;
wake_count=0;

testset3 = [];  %ȫ������,�޳�10�ű���
testset1 = [];
testset2 = [1 2 3 4];
for k = 1:13
    [deep_count,wake_count,test_N] = slp_testfeature(k,SVMModel,deep_count,wake_count,test_N);
end
%%  ���Լ���׼ȷ��------------------------------------------
test_accuracy = (deep_count )/test_N    %  '׼ȷ����' ���� '��������' 
 



















clear
close all
%%  ucd���ݼ�
%%  ---  �Ѿ���� 3  22  15  18  20 2(ǰ6�����Ե�ѵ��������ѵ��)  (23 - 28) 5  ; ����( 6 7 8 9) ����(10 11 12 13 14 17 19 21)
%  ����(23 - 28) 5   ����( 6 7 8 9)  ����(10 11 12 13 14 17 19 21)  �ܹ�19�������ܼ�ȫ�����ڲ���
%   ������ݼ�: 10 (����80%)
Label=[];
datatrain=[];

%% ׼��ѵ������
trainset1= [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22]; %ȫ������,�޳�10�ű���
trainset2 = [20 2 15 18 22 3];
for u = trainset1
    [datatrain , Label] = ucd_trainfeature(u,datatrain,Label,4); %����������
end
for u = 1:13
    [datatrain , Label] = slp_trainfeature(u,datatrain,Label,15); %����������
end
traindeepCount = sum(ismember(Label,'deep'));
%% ѵ��------------------------
% SVMModel = svmtrain(datatrain,Label,'kernel_function','rbf');
SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf');
% SVMModel = fitcsvm(datatrain,Label, 'KernelFunction','rbf','GapTolerance',5e-2);
sv = SVMModel.SupportVectors;

%% Ԥ��-------------------------------
test_N = 0;
deep_count=0;
mix_count=0;

testset3 = [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22];  %ȫ������,�޳�10�ű���
testset1 = [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28];
testset2 = [2 3 15 18 20 22];
for k = testset1
    [deep_count,mix_count,test_N] = ucd_testfeature(k,SVMModel,deep_count,mix_count,test_N);
end
%%  ���Լ���׼ȷ��------------------------------------------
test_accuracy = (deep_count)/test_N    %  'deep׼ȷ����' ���� '����deep����' 
 


















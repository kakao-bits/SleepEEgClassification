clear
close all

%%  ---  �Ѿ���� 3  22  15  18  20 2(ǰ6�����Ե�ѵ��������ѵ��)  (23 - 28) 5  ; ����( 6 7 8 9) ����(10 11 12 13 14 17 19 21)
%  ����(23 - 28) 5   ����( 6 7 8 9)  ����(10 11 12 13 14 17 19 21)  �ܹ�19�������ܼ�ȫ�����ڲ���
%  ������ݼ�: 10 (����80%)

%% ׼������
Label=[];
datatrain=[];
datatrain_CG=[];

trainset1= [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22]; %ȫ������,�޳�10�ű���
trainset2 = [20 2 15 18 22 3];
trainset3= [5 6 11 19 25 26];

test_N_deep = 0;
test_N_wake = 0;
test_N_mix = 0;

deep_count=0;
mix_count=0;


for u = trainset2
    [datatrain ,datatrain_CG, Label] = ucd_trainfeature_coarse_grain(u,datatrain,datatrain_CG,Label,1); %����������
end
% for u = 2
%     [datatrain , Label] = slp_trainfeature(u,datatrain,Label,3); %���������� ʹ�������ݵ�ѵ����������һ��
% end
traindeepCount = sum(ismember(Label,'deep'));

%% ѵ��------------------------
k=10;
sum_accuracy_svm=0;
R_deeps=0;
All_deeps=0;
R_mixs=0;
All_mixs=0;
predict_scores=ones(size(datatrain_CG,1),2);
jj=1;
deeperrorNum=0;

for i = 1:k

    [m,n] = size(datatrain_CG);
    indices = crossvalind('Kfold',m,k);
    test_indic = (indices == i);
    train_indic = ~test_indic;
    train_datas = datatrain_CG(train_indic,:);%�ҳ� ѵ�� �������ǩ
    train_labels = Label(train_indic,:);
    test_datas = datatrain_CG(test_indic,:);%�ҳ� ���� �������ǩ
    test_labels = Label(test_indic,:);    
    SVMModel = fitcsvm(train_datas, train_labels,'KernelFunction','rbf','KernelScale','auto','GapTolerance',0.8,'OutlierFraction',0.1);
    sv = SVMModel.SupportVectors;
    hold on
    plot3(sv(:,1),sv(:,2),sv(:,3), 'ko','MarkerSize',2);
    
%     SVMModel.ScoreTransform='doublelogit';
%     SVMModel.Sigma=0.1;
    for j = 1:size(test_datas,1)
        [predict_label,predict_scores(jj,:)]  = predict(SVMModel, test_datas(j,:));
        jj = jj+1;
        
        
        if ismember(test_labels(j,:),'deep')
            All_deeps = All_deeps + 1;
            if ismember(predict_label,'deep')
                R_deeps = R_deeps + 1;
            else
                test_datas(j,:);
                hold on
                plot3(test_datas(j,1),test_datas(j,2),test_datas(j,3), 'rx','MarkerSize',10);
                predict_scores(jj-1,1)
                deeperrorNum = deeperrorNum+1;
            end
        else
            All_mixs = All_mixs + 1;
            R_mixs = R_mixs + ismember(predict_label,'mix');
        end
        
        
    end
    

end
%     [V,I]=find(abs(predict_scores)<0.3);
%     datatrain_CG(V,:)
%     hold on
%     plot3(datatrain_CG(V,1),datatrain_CG(V,2),datatrain_CG(V,3), 'rx','MarkerSize',10);
%��ƽ��׼ȷ��
mean_accuracydeep_svm = R_deeps /All_deeps;
mean_accuracymix_svm = R_mixs /All_mixs;
disp('ƽ�������ȣ�');   
disp( mean_accuracydeep_svm);
disp('ƽ������ȣ�');   
disp( mean_accuracymix_svm);








% CVSVMModel = crossval(SVMModel);
% classLoss = kfoldLoss(CVSVMModel);

%% ��ͼ---------------------------------
% 

legend('deep','mix');
xlabel('������'),ylabel('������'),zlabel('Ƶ����');
% %% Ԥ��-------------------------------

% for k = testset2
%     [deep_count,mix_count,test_N_deep,test_N_mix] = ucd_testfeature_coarse_grain(k,SVMModel,deep_count,mix_count,test_N_deep,test_N_mix);
% end

%  ���Լ���׼ȷ��------------------------------------------
% test_mix_accuracy = (mix_count)/(test_N_mix + test_N_wake)    %   
% test_deep_accuracy = (deep_count)/(test_N_deep)    %  


















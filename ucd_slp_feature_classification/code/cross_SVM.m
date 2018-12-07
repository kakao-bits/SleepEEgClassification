clear
close all

%%  ---  已经完成 3  22  15  18  20 2(前6个被试的训练集用于训练)  (23 - 28) 5  ; 中午( 6 7 8 9) 下午(10 11 12 13 14 17 19 21)
%  晚上(23 - 28) 5   中午( 6 7 8 9)  下午(10 11 12 13 14 17 19 21)  总共19个被试总集全部用于测试
%  糟糕数据集: 10 (低于80%)

%% 准备数据
Label=[];
datatrain=[];
datatrain_CG=[];

trainset1= [11 12 13 14 17 19 21 6 7 8 9 5 23 24 25 26 27 28 2 3 15 18 20 22]; %全部被试,剔除10号被试
trainset2 = [20 2 15 18 22 3];
trainset3= [5 6 11 19 25 26];

test_N_deep = 0;
test_N_wake = 0;
test_N_mix = 0;

deep_count=0;
mix_count=0;


for u = trainset2
    [datatrain ,datatrain_CG, Label] = ucd_trainfeature_coarse_grain(u,datatrain,datatrain_CG,Label,1); %降采样倍数
end
% for u = 2
%     [datatrain , Label] = slp_trainfeature(u,datatrain,Label,3); %降采样倍数 使两类数据的训练数量基本一致
% end
traindeepCount = sum(ismember(Label,'deep'));

%% 训练------------------------
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
    train_datas = datatrain_CG(train_indic,:);%找出 训练 数据与标签
    train_labels = Label(train_indic,:);
    test_datas = datatrain_CG(test_indic,:);%找出 测试 数据与标签
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
%求平均准确率
mean_accuracydeep_svm = R_deeps /All_deeps;
mean_accuracymix_svm = R_mixs /All_mixs;
disp('平均灵敏度：');   
disp( mean_accuracydeep_svm);
disp('平均特异度：');   
disp( mean_accuracymix_svm);








% CVSVMModel = crossval(SVMModel);
% classLoss = kfoldLoss(CVSVMModel);

%% 画图---------------------------------
% 

legend('deep','mix');
xlabel('近似熵'),ylabel('样本熵'),zlabel('频谱熵');
% %% 预测-------------------------------

% for k = testset2
%     [deep_count,mix_count,test_N_deep,test_N_mix] = ucd_testfeature_coarse_grain(k,SVMModel,deep_count,mix_count,test_N_deep,test_N_mix);
% end

%  测试集的准确率------------------------------------------
% test_mix_accuracy = (mix_count)/(test_N_mix + test_N_wake)    %   
% test_deep_accuracy = (deep_count)/(test_N_deep)    %  


















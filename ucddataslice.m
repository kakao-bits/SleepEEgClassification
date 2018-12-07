
close all
clear 

%%  数据切分 wake和深睡期
% load('ucd019.mat'); 
% load('ucddb019_stage.txt');
% 
% ucddb019_stage5 = find(ucddb019_stage==5);%提取第四期和第五期 标签号
% ucddb019_stage4 = find(ucddb019_stage==4);
% ucddb019_stage45 = [ucddb019_stage4', ucddb019_stage5'];
% ucddb019_stage45s =  sort(ucddb019_stage45); % 获得深睡片段的下标
% % ucddb019_stage45sn = ucddb019_stage(ucddb019_stage45s);
% % 以上87个深睡片段 全部裁剪好 
% ucddb019_stage0s = find(ucddb019_stage==0)'; % 获得清醒片段的下标
% 
% window = 3840;
% ucddb019_stage45sH = ucddb019_stage45s*window;  %30s = 3840个样本点 (采样率128Hz)
% ucddb019_stage0s = ucddb019_stage0s*window;
% 
% ucd019_stagedeep = zeros(length(ucddb019_stage45sH),window); %每行数据代表30s的数据片段
% ucd019_stagewake = zeros(length(ucddb019_stage0s),window); %每行数据代表30s的数据片段
% 
% for i = 1:length(ucddb019_stage45sH)
%     ucd019_stagedeep(i,:) = ucddb019((ucddb019_stage45sH(i)-window+1):ucddb019_stage45sH(i)); 
% end
% 
% for i = 1:length(ucddb019_stage0s)
%     ucd019_stagewake(i,:) = ucddb019((ucddb019_stage0s(i)-window+1):ucddb019_stage0s(i)); 
% end
% 
% save('ucd019_stagedeep.mat','ucd019_stagedeep');
% save('ucd019_stagewake.mat','ucd019_stagewake');

% 以上两类数据已经分段好

%%  数据切分 新加入N1 N2 和 REM 期

load('ucd019.mat'); 
load('ucddb019_stage.txt');

ucddb019_stage5 = find(ucddb019_stage==5);%提取第四期和第五期 标签号
ucddb019_stage4 = find(ucddb019_stage==4);
ucddb019_stage3 = find(ucddb019_stage==3);% 提取 mix期
ucddb019_stage2 = find(ucddb019_stage==2);
ucddb019_stage1 = find(ucddb019_stage==1);
ucddb019_stage0s = find(ucddb019_stage==0)'; % 提取清醒片段的下标

ucddb019_stage45 = [ucddb019_stage4', ucddb019_stage5'];
ucddb019_stage45s =  sort(ucddb019_stage45);  % 排序 
ucddb019_stage123 = [ucddb019_stage1', ucddb019_stage2',ucddb019_stage3'];
ucddb019_stage123s =  sort(ucddb019_stage123); 

window = 3840;  
ucddb019_stage45sH = ucddb019_stage45s*window;  %30s = 3840个样本点 (采样率128Hz)  加窗
ucddb019_stage0s = ucddb019_stage0s*window;
ucddb019_stage123s = ucddb019_stage123s*window;

ucd019_stagedeep = zeros(length(ucddb019_stage45sH),window); %每行数据代表30s的数据片段
ucd019_stagewake = zeros(length(ucddb019_stage0s),window); %每行数据代表30s的数据片段
ucd019_stagemix = zeros(length(ucddb019_stage123s),window); %每行数据代表30s的数据片段


%% -----------注意修改ucddb019 和 ucd019 区别---------------------------------------
for i = 1:length(ucddb019_stage45sH)
    ucd019_stagedeep(i,:) = ucddb019((ucddb019_stage45sH(i)-window+1):ucddb019_stage45sH(i)); 
end

for i = 1:length(ucddb019_stage0s)
    ucd019_stagewake(i,:) = ucddb019((ucddb019_stage0s(i)-window+1):ucddb019_stage0s(i)); 
end
for i = 1:length(ucddb019_stage123s)
    ucd019_stagemix(i,:) = ucddb019((ucddb019_stage123s(i)-window+1):ucddb019_stage123s(i)); 
end

save('ucd019_stagedeep.mat','ucd019_stagedeep');
save('ucd019_stagewake.mat','ucd019_stagewake');
save('ucd019_stagemix.mat','ucd019_stagemix');








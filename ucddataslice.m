
close all
clear 

%%  �����з� wake����˯��
% load('ucd019.mat'); 
% load('ucddb019_stage.txt');
% 
% ucddb019_stage5 = find(ucddb019_stage==5);%��ȡ�����ں͵����� ��ǩ��
% ucddb019_stage4 = find(ucddb019_stage==4);
% ucddb019_stage45 = [ucddb019_stage4', ucddb019_stage5'];
% ucddb019_stage45s =  sort(ucddb019_stage45); % �����˯Ƭ�ε��±�
% % ucddb019_stage45sn = ucddb019_stage(ucddb019_stage45s);
% % ����87����˯Ƭ�� ȫ���ü��� 
% ucddb019_stage0s = find(ucddb019_stage==0)'; % �������Ƭ�ε��±�
% 
% window = 3840;
% ucddb019_stage45sH = ucddb019_stage45s*window;  %30s = 3840�������� (������128Hz)
% ucddb019_stage0s = ucddb019_stage0s*window;
% 
% ucd019_stagedeep = zeros(length(ucddb019_stage45sH),window); %ÿ�����ݴ���30s������Ƭ��
% ucd019_stagewake = zeros(length(ucddb019_stage0s),window); %ÿ�����ݴ���30s������Ƭ��
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

% �������������Ѿ��ֶκ�

%%  �����з� �¼���N1 N2 �� REM ��

load('ucd019.mat'); 
load('ucddb019_stage.txt');

ucddb019_stage5 = find(ucddb019_stage==5);%��ȡ�����ں͵����� ��ǩ��
ucddb019_stage4 = find(ucddb019_stage==4);
ucddb019_stage3 = find(ucddb019_stage==3);% ��ȡ mix��
ucddb019_stage2 = find(ucddb019_stage==2);
ucddb019_stage1 = find(ucddb019_stage==1);
ucddb019_stage0s = find(ucddb019_stage==0)'; % ��ȡ����Ƭ�ε��±�

ucddb019_stage45 = [ucddb019_stage4', ucddb019_stage5'];
ucddb019_stage45s =  sort(ucddb019_stage45);  % ���� 
ucddb019_stage123 = [ucddb019_stage1', ucddb019_stage2',ucddb019_stage3'];
ucddb019_stage123s =  sort(ucddb019_stage123); 

window = 3840;  
ucddb019_stage45sH = ucddb019_stage45s*window;  %30s = 3840�������� (������128Hz)  �Ӵ�
ucddb019_stage0s = ucddb019_stage0s*window;
ucddb019_stage123s = ucddb019_stage123s*window;

ucd019_stagedeep = zeros(length(ucddb019_stage45sH),window); %ÿ�����ݴ���30s������Ƭ��
ucd019_stagewake = zeros(length(ucddb019_stage0s),window); %ÿ�����ݴ���30s������Ƭ��
ucd019_stagemix = zeros(length(ucddb019_stage123s),window); %ÿ�����ݴ���30s������Ƭ��


%% -----------ע���޸�ucddb019 �� ucd019 ����---------------------------------------
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








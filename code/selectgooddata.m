
clear 
% close all

%%   �޸�ucd000   deep deep deep
%%  --��ѡ���õ�����,һ��һ��ͼȥ��-----------һ������ʾȫ��ʱ�䴰
load('ucd026_stagedeep.mat');

B = 1 ;
E = 100 ;



M =size(ucd026_stagedeep(B:E,:),1);
for i= B:B+M-1
    figure(i+1000),
    set (gcf,'Position',[100,100,1000,200], 'color','w')
    plot(ucd026_stagedeep((i),:));
    axis([-100,4000,-2,2]);
end

% ucd015_deepbad=0;
% save('ucd015_deepbad', 'ucd015_deepbad'); %

%% ----ÿһ��ʱ�䴰�����鿴---------------------------------------------
% while 1
%     
%     i = input('input:');
%     close all,
%     figure(1),
%     data = ucd015_stagedeep(i,:);
%     set (gcf,'Position',[50,100,1800,300], 'color','w'),hold on
%     plot(data,'b');
%     axis([-100,4000,-2,2]);
%     
% %     figure(2)
% %     set (gcf,'Position',[50,500,1800,300], 'color','w')
% %     pwelch(data,[],[],[],128);
%     
%     
%     
%     
% %     dataf = ucdfilter(data,6);  % �˲�
% %     % dataf = ucdfilter(dataf,5);  % �˲�
% %     figure(3),
% %     pwelch(dataf,[],[],[],128);
% %     figure(1),
% %     % set (gcf,'Position',[50,1000,1800,300], 'color','r')
% %     plot(dataf,'r')
% end


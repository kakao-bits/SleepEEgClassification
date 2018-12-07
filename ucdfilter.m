
function dataf=ucdfilter(data, c)

    if c == 1      
        load('ucdHd1');
    elseif c==2
        load('ucdHd2');
    elseif c==3
        load('ucdHd3');
    elseif c==4
       load('ucdHd4');
     elseif c==5
        load('ucdHd21.mat');
      elseif c==6
        load('ucdHd0.5-29.mat')
    end
    [b,a]=tf(Hd);
% figure,plot(datal);
% figure, pwelch(datal,[],[],[],125);
% dataf = filtfilt(SOS,G,datal);
% figure,plot(dataf);
% figure,  pwelch(dataf,[],[],[],125);
%% 变量c是四种频段滤波器选择
dataf = zeros(size(data));
parfor i = 1:size(data,1)
    dataf(i,:) = filtfilt(b,a,data(i,:));
end


% datafconv = conv(Num,datal);
% figure,plot(dataf);
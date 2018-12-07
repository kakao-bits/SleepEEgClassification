function SpectEn_value = SpectEn(data,fs)

%% 计算频谱熵  注意如果 传入的数据 是多维度的矩阵,以下函数需要变动

[Pf,f] = pwelch(data,[],[],[],fs);
Pf = ((Pf));
% figure, plot(Pf);

Qf = Pf./sum(Pf); %归一化
Hf = Qf.*log(1./Qf);
SpectEn_value = sum(Hf)./log(size(f,1));

% disp(['------->> 频谱熵:  ',num2str(SpectEn_value)])
% disp(SpectEn_value)

end

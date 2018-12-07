function SpectEn_value = SpectEn(data,fs)

%% ����Ƶ����  ע����� ��������� �Ƕ�ά�ȵľ���,���º�����Ҫ�䶯

[Pf,f] = pwelch(data,[],[],[],fs);
Pf = ((Pf));
% figure, plot(Pf);

Qf = Pf./sum(Pf); %��һ��
Hf = Qf.*log(1./Qf);
SpectEn_value = sum(Hf)./log(size(f,1));

% disp(['------->> Ƶ����:  ',num2str(SpectEn_value)])
% disp(SpectEn_value)

end

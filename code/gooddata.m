
clear 
close all
%% 删除 认为不好的片段   (修改ucd000)
load('ucd015_stagewake.mat')
load('ucd015_stagedeep.mat')
load('ucd015_stagemix.mat')

load('ucd015_wakebad.mat')
load('ucd015_deepbad.mat')
load('ucd015_mixbad.mat')

ucd015_mix_g = [];
if (~isempty(ucd015_mixbad)) && (~isempty(ucd015_stagemix))
    ucd015_mix_g = ucd015_stagemix;    
    ucd015_mix_g(ucd015_mixbad,:) = [];
elseif isempty(ucd015_mixbad)
    ucd015_mix_g = ucd015_stagemix; 
end
save('ucd015_mix_g.mat','ucd015_mix_g');

% ucd015_deep_g = [];
% if (~isempty(ucd015_deepbad)) && (~isempty(ucd015_stagedeep))
%     ucd015_deep_g = ucd015_stagedeep;    
%     ucd015_deep_g(ucd015_deepbad,:) = [];
% elseif isempty(ucd015_deepbad)
%     ucd015_deep_g = ucd015_stagedeep; 
% end
% save('ucd015_deep_g.mat','ucd015_deep_g');
% 
% ucd015_wake_g = [];
% if (~isempty(ucd015_wakebad)) && (~isempty(ucd015_stagewake))
%     ucd015_wake_g = ucd015_stagewake;    
%     ucd015_wake_g(ucd015_wakebad,:) = [];
% elseif isempty(ucd015_wakebad)
%     ucd015_wake_g = ucd015_stagewake; 
% end
% save('ucd015_wake_g.mat','ucd015_wake_g');


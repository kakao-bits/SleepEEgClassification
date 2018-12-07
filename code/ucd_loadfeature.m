function ucd_loadfeature(u)

name_deep = sprintf('ucd%03d_deepf6_feature',u);
name_mix = sprintf('ucd%03d_mixf6_feature',u);
name_wake = sprintf('ucd%03d_wakef6_feature',u);

load(name_deep)
load(name_mix)
load(name_wake)


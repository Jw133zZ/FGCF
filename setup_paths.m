function setup_paths()

% Add the neccesary paths
pathstr= fileparts(mfilename('fullpath'));

% Tracker implementation
addpath(genpath([pathstr '/implementation/']));

% Utilities
addpath([pathstr '/utils/']);

% The feature extraction
addpath(genpath([pathstr '/feature_extraction/']));

% Matconvnet
addpath([pathstr '/external_libs/matconvnet/matlab']);
addpath([pathstr '/external_libs/matconvnet/matlab/simplenn']);
addpath([pathstr '/external_libs/matconvnet/matlab/mex/']);

% PDollar toolbox
addpath(genpath([pathstr '/external_libs/pdollar_toolbox/channels']));

% Mtimesx
addpath([pathstr '/external_libs/mtimesx/']);

% mexResize
addpath([pathstr '/external_libs/mexResize/']);

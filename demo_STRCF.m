
% This demo script runs the STRCF tracker with deep features on the
% included "Human3" video.

% Add paths
setup_paths();

%  Load video information
base_path  =  'E:/OTB100';
% video  = choose_video(base_path);
  video = 'blurcar2';
%MotorRolling;Skiing;Bird1;Jogging;Human3;Diving;Biker��Ironman;Freeman4;Soccer
video_path = [base_path '/' video];
[seq, gt_boxes] = load_video_info(video_path);

% Run STRCF
%   results = run_STRCF(seq);
  results = run_DeepSTRCF_BY3(seq);

pd_boxes = results.res;
thresholdSetOverlap = 0: 0.05 : 1;
success_num_overlap = zeros(1, numel(thresholdSetOverlap));
res = calcRectInt(gt_boxes, pd_boxes);
for t = 1: length(thresholdSetOverlap)
    success_num_overlap(1, t) = sum(res > thresholdSetOverlap(t));
end
cur_AUC = mean(success_num_overlap) / size(gt_boxes, 1);
FPS_vid = results.fps;
display([video  '---->' '   FPS:   ' num2str(FPS_vid)   '    op:   '   num2str(cur_AUC)]);
%% cuda-8.0 + cudnn-5.1

addpath matlab;
addpath examples;
run matlab/vl_setupnn ;

vl_compilenn('enableGpu', true, ...
'cudaRoot', 'C:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v10.2', ...  %put cuda path here 
'cudaMethod', 'nvcc', ...
'enableCudnn',true,... 
'cudnnroot','D:\����װ��\Cudnn\cuda'); % put cudnn dir path here, which includes two dirs, `include` and `lib64`

warning('off');

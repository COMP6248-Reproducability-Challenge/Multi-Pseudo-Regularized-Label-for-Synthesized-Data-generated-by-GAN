dataset_name = 'market_dcgan_24000';
number_samples = 24000;

load(strcat('./data/url_data.mat'));
p = dir(strcat('data/',dataset_name,'/*.jpg'));

num = numel(imdb.images.data);
for i=1:number_samples
    url = strcat('data/',dataset_name,'/generated_54000_256/',p(i).name);
    imdb.images.data(num + i) =cellstr(url);
    imdb.images.label(num + i) = 0;
    imdb.images.set(num + i) = 1;
end

save(strcat('./data/url_data_gan_',num2str(number_samples),'.mat'),'imdb','-v7.3');
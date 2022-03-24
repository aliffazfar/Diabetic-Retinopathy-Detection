clc;
clear all;
close all;
%Load current directory

yourFolder = '/Users/aliffazfar/Desktop/testimages/normal';

xlData = cell(15, 5);

for k = 1:15
  jpgFilename = sprintf('%d.JPG', k);
  fullFileName = fullfile(yourFolder, jpgFilename);
  if exist(fullFileName, 'file')
    imageData = imread(fullFileName );
  else
    warningMessage = sprintf('Warning: image file does not exist:\n%s', fullFileName);
    uiwait(warndlg(warningMessage));
  end

image = imageData;

imgrsz = imresize(image, [512 512]);

grayImage = imgrsz;
[rows, columns, numberOfColorBands] = size(grayImage);
if numberOfColorBands > 1
  % It's not really gray scale like we expected - it's color.
  % Convert it to gray scale by taking only the green channel.
  grayImage = grayImage(:, :, 2); % Take green channel.
end

mask = imread('fmask.tif'); 
mask = imresize(mask,[512 512]);

%Histogram Equalization
heImage = adapthisteq(grayImage,'clipLimit',0.02,'Distribution','rayleigh');
% Mask the image.
heImage = heImage .* uint8(mask);
correlation = stats.corrm;
energy = stats.energ;
entropy = stats.entro;
homogeneity = stats.homom;
features = [contrast, correlation, energy, entropy, homogeneity]

    xlData{k, 1} = stats.contr;
    xlData{k, 2} = stats.corrm;
    xlData{k, 3} = stats.energ;
    xlData{k, 4} = stats.entro;
    xlData{k, 5} = stats.homom;
med2 = medfilt2(heImage);

se=strel('disk',5);           
morphological=imbothat(med2,se);
med2  = imadjust(morphological);

tmp = med2;
% Create the Gray Level Cooccurance Matrices (GLCMs) 
glcms = graycomatrix(tmp,'Offset',[0 1], 'Symmetric', true);
% Derive Statistics from GLCM
stats = GLCMFeatures(glcms,0); 
contrast = stats.contr;

end

filename = 'normal.xlsx';
writecell(xlData, filename);
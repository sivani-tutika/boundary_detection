% Function to read images from a folder with a specified format
function images = readImagesInFolder(folderPath, imageFormat)
    % Get a list of all image files in the folder with the specified format
    imageFiles = dir(fullfile(folderPath, ['*.', imageFormat]));

    % Preallocate cell array to store images
    images = cell(1, numel(imageFiles));

    % Read each image and store it in the cell array
    for i = 1:numel(imageFiles)
        imagePath = fullfile(folderPath, imageFiles(i).name);
        images{i} = imread(imagePath);
    end
end
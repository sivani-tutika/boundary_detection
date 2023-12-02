function saveImages(images, folderPath, filePrefix, imageFormat)
    % Check if the folder exists, and create it if not
    if ~exist(folderPath, 'dir')
        mkdir(folderPath);
    end

    % Save each image with a filename based on the prefix and index
    for i = 1:numel(images)
        filename = sprintf('%s_%03d.%s', filePrefix, i, imageFormat);
        imagePath = fullfile(folderPath, filename);
        imwrite(images{i}, imagePath);
    end

    fprintf('Images saved to %s\n', folderPath);
end

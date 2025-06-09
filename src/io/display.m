% Function to display images in a montage
function displayImages(images)
    % Create a montage of images
    montageImages = cat(4, images{:});

    % Display the montage
    figure;
    montage(montageImages, 'Size', [1, numel(images)], 'BorderSize', 5);
    title('Images in the Folder');
end

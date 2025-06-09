function metrics = calculateBinaryImageMetrics(gtImage, segImage)
    % Calculate True Positive (TP), True Negative (TN), False Positive (FP), and False Negative (FN)
    [tp, tn, fp, fn] = calculateConfusionMatrix(gtImage, segImage);
    
    % Calculate recall, precision, specificity, and accuracy
    recall = calculateRecall(tp, fn);
    precision = calculatePrecision(tp, fp);
    specificity = calculateSpecificity(tn, fp);
    accuracy = calculateAccuracy(tp, tn, fp, fn);
    
    % Calculate Structural Similarity Index (SSIM) and Mean Squared Error (MSE)
    ssimValue = calculateSSIM(gtImage, segImage);
    mseValue = calculateMSE(gtImage, segImage);
    
    % Store the results in a structure
    metrics = struct('Recall', recall, 'Precision', precision, ...
                     'Specificity', specificity, 'Accuracy', accuracy, ...
                     'SSIM', ssimValue, 'MSE', mseValue);
end

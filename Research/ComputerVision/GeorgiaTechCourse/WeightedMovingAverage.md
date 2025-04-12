# Weighted Moving Average Using Gaussian

🔹 Line 1:

h = fspecial('gaussian', [5 5], 1);  % 5x5 kernel, sigma=1

🔍 What it does:

    fspecial is a MATLAB function that creates predefined 2D filters.

    'gaussian' tells it to create a Gaussian filter (a weighted smoothing filter).

    [5 5] means the filter will be a 5x5 matrix (kernel size).

    1 is the standard deviation (σ) of the Gaussian distribution → controls how strong/smooth the blur is.

🎯 Result:

    You get a 5x5 matrix h, where the center has the highest weight and values decrease radially (like a bell curve). It looks something like this:

    h =
       0.0025   0.0120   0.0198   0.0120   0.0025
       0.0120   0.0585   0.0965   0.0585   0.0120
       0.0198   0.0965   0.1592   0.0965   0.0198
       0.0120   0.0585   0.0965   0.0585   0.0120
       0.0025   0.0120   0.0198   0.0120   0.0025

This matrix will be used to average pixel values with a weighted sum (more weight to center pixels, less to edges).
🔹 Line 2:

denoised_img = zeros(size(noisy_img), 'uint8');

🔍 What it does:

    Creates a new empty image (denoised_img) of the same size and data type as noisy_img.

    zeros(size(noisy_img)) makes a 3D array (height × width × 3 for RGB).

    'uint8' makes sure it's suitable for image data (values between 0 and 255).

🔹 Loop: Denoising each color channel

for c = 1:size(noisy_img, 3)
    denoised_img(:, :, c) = uint8(imfilter(noisy_img(:, :, c), h, 'replicate'));
end

🔍 What this does:

Most color images are 3D arrays: height × width × channels (RGB). You can't apply a 2D filter directly to all channels together, so you loop through them:
➤ for c = 1:size(noisy_img, 3)

    Iterates through the 3 channels:

        c = 1: Red

        c = 2: Green

        c = 3: Blue

➤ imfilter(noisy_img(:, :, c), h, 'replicate')

    Applies the Gaussian filter h to the c-th channel.

    'replicate' handles border pixels by repeating the edge values instead of zero-padding (which would create black borders).

➤ uint8(...)

    After filtering, the data might become double with values outside [0, 255], so we convert it back to uint8 (image format).

➤ denoised_img(:, :, c) = ...

    Saves the filtered channel back into the final output image.

🔚 Result:

You now have denoised_img where noise has been suppressed using a Gaussian-weighted average in a localized 5×5 window. It smooths out random pixel variations (Gaussian noise) while preserving general structure.
🧠 Summary:
Component	Purpose
fspecial('gaussian',...)	Creates a weighted averaging filter
imfilter(..., 'replicate')	Applies it to each color channel while handling borders
Loop over RGB	Filters each color channel separately
uint8(...)	Ensures valid image format after filtering
# Corelation Filtering - Uniformed Weights

🎯 Correlation Filtering – Uniform Weights
🔍 What is it?

Correlation filtering applies a filter (or kernel) to an image to emphasize or extract features.
When the filter uses uniform weights, each neighboring pixel contributes equally to the result.
🧮 How It Works

A uniform filter (like a box filter) is a matrix where all values are the same, such as:

h = ones(3,3) / 9;

    ones(3,3) creates a 3×3 matrix of ones.

    Dividing by 9 normalizes it, so the sum of the weights equals 1.

    This is a simple average of surrounding pixels.

✨ Effect on Image

    Blurs the image by averaging neighboring pixels.

    Reduces noise, but less effectively than Gaussian filters.

    May blur edges more noticeably due to equal weights.

🧠 Summary
Component	Description
ones(N,N)/N^2	Uniform averaging kernel
imfilter(...)	Applies the kernel via correlation
Result	Smoothed image with uniform blur

## Non Uniformed Weights

Generalize to allow different weights depending on neighboring pixels relative position.
This is called cross correlation denoted G = H o F.

The Filter "KERNEL " / "MASK" H[u,v], is the matrix of weights in the linear combination.

Kernels are mask that do the computation not related to machine learning kernels.

## Circular Symmetric Gaussian Function

A circularly symmetric Gaussian function is a special case of the 2D Gaussian function where the spread (standard deviation, σ) is the same in all directions (i.e., isotropic). This means the values only depend on the distance from the center, not the direction.
🔍 Mathematical Definition

The 2D circularly symmetric Gaussian function is given by:
G(x,y)=12πσ2⋅e−x2+y22σ2
G(x,y)=2πσ21​⋅e−2σ2x2+y2​

    σσ = standard deviation

    xx, yy = pixel offsets from the center

    The term x2+y2x2+y2 means it’s symmetric in all directions.

🔵 Key Properties
Property	Description
Symmetry	Perfectly symmetric in all directions (circular level curves)
Peak at center	Maximum value occurs at the center (x = 0, y = 0)
Decays exponentially	Values fall off quickly as you move away from the center
Used for smoothing/blurring	Common in image processing to suppress noise while preserving structure

### Why ?

    Low-pass filtering: Removes high-frequency noise while maintaining spatial detail.

    Edge-preserving smoothing: Gentle blur with minimal distortion compared to box blur.

    Scale-space representation: Used in SIFT (Scale-Invariant Feature Transform) and other CV algorithms.

## Isotropic

Isotropie (von altgriechisch ἴσος isos „gleich“ und τρόπος tropos „Drehung, Richtung“) ist die Unabhängigkeit einer Eigenschaft von der Richtung.

### The Two Sigmas

When discussing two sigmas (σ) in the context of a Gaussian function and intensity, we are typically referring to two different scales of the Gaussian distribution that can affect how the function behaves, especially in image processing.
Understanding "Sigma" in Gaussian Distributions

The standard deviation (σ) in a Gaussian function determines the spread or width of the Gaussian curve. A smaller σ results in a sharper peak, whereas a larger σ creates a broader, more spread-out distribution.

In image processing, this spread translates to the amount of blur or smoothing a Gaussian filter will apply to the image.
Two Sigmas in Intensity Space

When we refer to "two sigmas" in intensity space, we are often talking about two different Gaussian filters applied to an image at different scales (or different σ values). This can be useful when applying multi-scale or multi-resolution techniques, such as those used in image pyramids or edge detection.

Here’s how the two sigmas interact with intensity:

    Smaller Sigma (σ1):

        A smaller σ (say σ1 = 1) means a narrower Gaussian curve. This implies that the filter will focus more on the local neighborhood of each pixel, resulting in a more fine-grained blur. The resulting image will appear only slightly smoothed.

        Intensity changes are smaller, and the image detail is preserved, but some noise or small variations might still be visible.

    Larger Sigma (σ2):

        A larger σ (say σ2 = 5) means a wider Gaussian curve. This creates a stronger blur, affecting a larger neighborhood of pixels. The result is a more intense smoothing effect, with larger variations in intensity (pixel values) being averaged out over a larger area.

        Intensity values become more uniform across a larger area, and finer details (such as edges or texture) might get lost.
# Selecting the right amount of pixel for UseCase

If you want to capture a feature of a certain size with a camera such that it's clearly visible (i.e. has a certain number of pixels across it), you need to understand the relationship between:

    Field of View (FoV) – how wide the camera can see (in mm or meters at a certain distance).

    Feature size – the physical size of the object or detail you want to capture.

    Resolution (in pixels) – how many pixels your camera has across the sensor width (horizontal resolution).

    Pixels per feature – how many pixels you want the feature to take up (ideally, 2 pixels or more per feature to resolve it, Nyquist theorem).

Formula (Simplified):

If you want a feature of size f (e.g. in mm) to occupy at least p pixels, and your total FoV is F (in same unit as f), and your camera sensor has R horizontal pixels:
FR=mm per pixel
RF​=mm per pixel
⇒fF×R=pixels covering the feature
⇒Ff​×R=pixels covering the feature

So:
Required pixels≥Ff×p
Required pixels≥fF​×p

Or if you flip it to find the required resolution:
R≥Ff×p
R≥fF​×p
Example:

You have a field of view of 200 mm and want to capture a 1 mm feature with at least 2 pixels across it:
R≥2001×2=400 pixels
R≥1200​×2=400 pixels

So, you need a minimum horizontal resolution of 400 pixels to resolve that 1 mm feature with 2 pixels.


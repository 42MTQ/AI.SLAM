# Images

Images are just functions, that means to images can be done anything that can be done to functions.
Mathematical understanding of imagery. Numerical Representations can be easily illustrated in MatLab.
Matlab array index start at 1.

## Image noise function

I(x,y)+n(x,y)

I= Image N = Noise.

### Gaussian Noise

Variations in intensity drawn from a gaussian normal distribution.

### Sigma

if 0 is black and we add noise we get negative values.
So in order to accomodate the abstractions grey is 0 black becomes a negative.
Sigma is a noise function being added to an image you can give sigma a numeric value to set noise intensity levels.

sigma = 20;

Using doubles

double sigma = 0.1;

When talking about the amount of noise to an image we need to do that in account to the overall numeric range it is going to effect.

Use floating point numbers 200.0;

### Normalizing

We only normalize images to display it, not to compute with imagery.

### Removing Noise in Images

Idea: Use neighbouring pixel values to create an average to smooth out values dependant on their neighbourhood.

### Assumptions

True value pixels are similiar to the true value of pixels nearby.

the noise added to each pxixel is done independently.

## Weighted Average

Can add weights to our moving average.

Nearby pixels were thought of to be also related numerically to the pixel in question. If that holds true then it is also true 
that the closer the pixel is to the question pixel, the closer the numerical relationship of the two.

So I can add weights to their closest neighbours to be more heavily influencing rather than the outliers. Who may be only distantly related.


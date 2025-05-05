# Evaluating IMU with Experiments

## IMU Evaluation

Resource used for testing practices:
https://www.researchgate.net/publication/224637354_An_efficient_method_for_evaluating_the_performance_of_MEMS_IMUs

ommon inertial sensors/units testing in the lab can providesensor parameters such as noise density bias instability scale factor (SF) instability non-orthogonality non-linearity g-sensitivity of gyroscopes temperature sensitivities (bias and SF) 

(PDF) An efficient method for evaluating the performance of MEMS IMUs. Available from: https://www.researchgate.net/publication/224637354_An_efficient_method_for_evaluating_the_performance_of_MEMS_IMUs [accessed Apr 28 2025].

## IMU Testing Methodology

The proposed method in this paper is based on using MEMSsensor static data signals, collected in the lab (or in the outdoorenvironment), to represent the MEMS sensor errors. Theproposed emulation approach can be summarized as follows(see Fig. 1):1. Conduct a typical field test that includes a navigation-grade (or at least a high-end tactical-grade) IMU andGPS. In this case, the higher grade IMU is consideredas the reference IMU for the following analysis. Thistest should contain general trajectories, drivingconditions and GPS signal conditions.2. Collect long-term (at least longer than the field test timespan) static signals of the MEMS IMU with the IMUleveled.3. Graft the MEMS static signals onto the signal of thereference IMU field data to obtain a quasi-field datasetfor the MEMS IMU. It should be noted here that thegravity part in the vertical accelerometer output shouldbe removed. In addition, the projection of the Earthrotation rate to the MEMS gyros could be removed ifnecessary.4. Process the emulated MEMS IMU field dataset with thereal GPS data of the field test to evaluate the MEMSIMU in terms of navigation performance.5. If other MEMS IMUs need to be evaluated, the aboveprocedure (from 2 to 4) should be repeated using thesame reference IMU and field test data in step 1

(PDF) An efficient method for evaluating the performance of MEMS IMUs. Available from: https://www.researchgate.net/publication/224637354_An_efficient_method_for_evaluating_the_performance_of_MEMS_IMUs [accessed Apr 28 2025].

## Collecting

How to use these papers in your own IMU evaluation

    Adopt Allan variance/deviation analysis (random walk, bias instability) as your core noise-characterization tool.

    Follow static lab tests (30–60 min stationary data) to compute bias and noise density.

    Use dynamic simulations (grafted error approach) to predict real-world navigation drift without lengthy field campaigns.

    Validate your IMU in a visual-inertial SLAM loop to directly measure its impact on trajectory and mapping accuracy.

further articles:

https://www.researchgate.net/publication/263180912_A_time-controllable_Allan_variance_method_for_MEMS_IMU

https://pmc.ncbi.nlm.nih.gov/articles/PMC10975684/

### Infopoint

The purpose of the experiment conducted in this paper is to
identify noise terms existing in MEMS gyroscopes. The
bandwidth of MEMSense gyroscopes is 50 Hz as mentioned
in the manufacturer specifications. According to the
requirement of Nyquist sampling theorem, the sampling rate
should be theoretically at least twice the maximum frequency
of the sensor. Lots of experiments have proved that the
sampling rate should reach three to six times the bandwidth of
the sensor for a reliable Allan variance analysis result. In this
paper, the data sampling rate is 150 Hz, which is three times
the nIMU bandwidth

In general, the Allan analysis involves collecting static data
for a time period ten times longer than the most significant
noise correlation time (i.e. the averaging time). For most
MEMS gyroscopes, the correlation time ranges from 1 second
to 1 hour or even longer time periods. In our research,
the experiment was implemented at room temperature and
the measurements were collected from nIMU during each
6 hour static test for seven days

## Allan Variance Method

Allan variance analysis result
The basic procedure of the normal Allan variance method can
be summarized as follows:
. Step 1. Take a long sequence of data and divide it into
clusters according to the averaging time.
. Step 2. Average the data in each cluster.
. Step 3. Calculate the differences in average between
successive clusters, square these differences, add them all
up, and then divide the sum by a rescaling factor to get the
Allan variance.
. Step 4. Obtain the Allan standard deviation by extracting
the square root of the Allan variance.
. Step 5. Go back to step 1, increase the averaging time, and
then start over again until the data can only be divided
into the allowable minimum number of independent
clusters.

## Modified Allan Methodology

Following the ideas formulated above, the basic procedure of
the modified Allan variance method is summarized as follows:
. Step 1. Calculate the allowable value of T MIN and TMAX of
the averaging time based on the sampling rate and the
required estimation accuracy.
. Step 2. Determine the number iMAX of the Allan standard
deviations according to the desired estimation time.
. Step 3. Compute the common ratio Tr so as to yield the
initial geometric sequence of averaging times.
. Step 4. Obtain the valid (i.e. round to integers and remove
duplications) cluster sizes corresponding to the averaging
time series.
. Step 5. Get the final feasible geometric sequence of
averaging times based on the valid cluster sizes.
. Step 6. Calculate the Allan standard deviations versus the
obtained averaging time series using the normal Allan
variance method.

https://pmc.ncbi.nlm.nih.gov/articles/PMC10975684/pdf/sensors-24-01953.pdf


https://pdf.sciencedirectassets.com/274151/1-s2.0-S1000936115X00021/1-s2.0-S1000936114002003/main.pdf?X-Amz-Security-Token=IQoJb3JpZ2luX2VjENz%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLWVhc3QtMSJHMEUCIQC8Ay%2BmAdmcpgzA0WJYMlgVFSzG9iOy35POhmGclcNqZwIgWxHZV%2FX6KYeGiGx9X9EpFzVC6aMHkZmCcTU6M%2FO2dGsqswUIdRAFGgwwNTkwMDM1NDY4NjUiDAMkAk0IXjQhoLFhEyqQBX5Rv34Ic2lDOV5QJJwAL%2FtX09gq7U2wlOFyEzZXKvlGRTLrLFLWteFfeh4Sh3HKAfpFjQH9tsqK%2BcWjlyORBFX3ftNhk7CzrAcO%2BOpXxrfQ9maElG58Dik3siQCcNPWPKYQhEDKKXBdtB%2B%2FnS06CvoXmCd0%2BOLdBIrA2cvfr8%2B%2F%2FTE1FqwjQPDt%2BWxsBMIzorp1U2bQfKs63e85mtxGyAKEovHbiHoX4lD1QSxpBxYj7uJlx5sTgxM5nEvSh5WyP85oNDR9%2FHwgATiWF0ekXgBO0GxAzbp9YPW3mqybGi0h%2BK3RghpM88GxATJW8ynESwOkq3Mr%2BBLOcwAHdc%2BjR94cX5FhsAD2ZGtc%2FKl5HQhbDdVFv0ba4hhTeXNcfJj%2FU2NxGKPD1IAH0G68whJkMLOaYZ25%2BYjrm7ALoBNKw0ApjzN6F4ny9LoIsOwkPyIs1%2FMMtb0nFyJjnClvBb%2BwJrS2p12jYDghAR3hDEXz%2FevRj8S9TegnoR5mhSNhv8cs5ekHtAb7Cy1Fq9iZKUbntP4eR6GQK5UDNePqjKw5fA8ixmXkj%2BRqa%2BG4UOvVIxVqjJqKvPhGXdz9CMACKlRL%2FlbZ8G%2B7qK%2BjkyTf8sKgmHWCNakRoi%2FRXUXIqp5u6u0UGn9Y3vEpTos4PawBGpzeiIn8ogXpbs%2FZ5WtvSVKMRVxJON22iKt9x6Ycu8Q%2FC9W30m%2BHNmh3oXLn0GsQxFBCZrut94iubGmhQE4K39579%2FwF95rGNggr6KNL6EX4AQtw2SnScOsPT3v42Wn6bLyWS27%2F8brvyE2mFuvgQCC9rtTBkQ9%2B4%2B1SK18MMNEpeaE%2FJ9tcUZsNgKV%2FVWXv%2Bxa5hsCOnQQil2gTSrkYgZHW04jfMIbNvcAGOrEBnOUtwMe%2FG%2FelpAisEN%2BRKSZGMgIOPvbkanat57yLzZdWI%2BixqgkPhEDawGYjvPLhHZXohISpYCO2n5SUzCLTu74Bre8RGAFtfFccIDUApm61ns7p7m6T2IKDMrDJjTRCWaUZJbN91v8g1NuoLxNcbquPdE3Ir9hAAUXwW3WJrYinsE%2F9RY%2Bp6zlrrzVook3UabCojA5VBHyyOxB38tIbYUOFFf5nLjahwFCNVkukgwWO&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Date=20250428T122702Z&X-Amz-SignedHeaders=host&X-Amz-Expires=300&X-Amz-Credential=ASIAQ3PHCVTY2BOSQE3A%2F20250428%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Signature=9adfc25afd21f68aa5aa78529acbdc0deab77097288170bd45c5a75005f7fcde&hash=5b1f5a39a560fa06d0159f6caf69898c05d67b3c8720a5309fe0f24f86a0f8d3&host=68042c943591013ac2b2430a89b270f6af2c76d8dfd086a07176afe7c76c2c61&pii=S1000936114002003&tid=spdf-21b53e65-d91b-4d87-aace-1b3a14d86d31&sid=432e9ff798ecd6489b3ba123bf08fccbc463gxrqb&type=client&tsoh=d3d3LnNjaWVuY2VkaXJlY3QuY29t&rh=d3d3LnNjaWVuY2VkaXJlY3QuY29t&ua=00065f5755565d0452&rr=93768d2c2c8a6922&cc=de

## Resource Implementing IMU for autonomous

https://iopscience.iop.org/article/10.1088/1755-1315/1127/1/012006/pdf

LOOK INTO AGAIN: EXAMPLE MODS
The Generalized Method of Wavelet Moments for
Inertial Navigation Filter Design

## Generalized Wavelet Moments

The Generalized Method of Wavelet Moments (GMWM) is a technique used to characterize and model the stochastic errors of inertial sensors, like accelerometers and gyroscopes, in inertial navigation systems (INS). It's particularly effective for estimating complex stochastic error models that are difficult to capture with traditional methods like Allan variance. GMWM is often used in conjunction with other estimation techniques like Kalman filtering for INS/GNSS integration.
Elaboration:

    What is GMWM?
    GMWM is a moment-matching approach that utilizes the wavelet variance to estimate the parameters of time series models, specifically designed for certain state-space models. It's especially well-suited for modeling the stochastic errors of inertial sensors because these errors often exhibit complex temporal characteristics. 

Why is GMWM useful for INS filter design?
Accurately characterizing and modeling inertial sensor errors is crucial for designing robust and accurate navigation filters, such as Kalman filters, which are used to fuse INS data with other sources like GPS.
How does GMWM work in this context?
GMWM helps in estimating the parameters of the stochastic error models for accelerometers and gyroscopes within an INS. These models can then be incorporated into the navigation filter, leading to better performance.
Benefits of using GMWM:
GMWM can capture complex stochastic errors that might be missed by simpler methods, resulting in more accurate INS/GPS integration. It allows for a more precise understanding of the inertial sensor behavior, which is essential for optimizing filter performance.
Example application:
ResearchGate article provides a comprehensive example of how GMWM is applied to inertial navigation filter design. This article demonstrates how GMWM can be used to calibrate INS sensors and how the resulting models impact navigation filter performance.

## Allantools library check

Allantool for data evaluation of IMU's

## Resources

https://iopscience.iop.org/article/10.1088/1755-1315/1127/1/012006/pdf

GPS BOOK:

Springer
Handbookoƒ
Global Navigation
Satellite Systems
Teunissen
Montenbruck
Editors


Research article
A time-controllable Allan variance method
for MEMS IMU



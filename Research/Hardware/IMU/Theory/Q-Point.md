# Q Notation

The Q notation is a way to specify the parameters of a binary fixed point number format. For example, in Q notation, the number format denoted by Q8.8 means that the fixed point numbers in this format have 8 bits for the integer part and 8 bits for the fraction part. 

## Definition

## Definition Texas Instruments version

The Q notation, as defined by Texas Instruments,[1] consists of the letter Q followed by a pair of numbers m.n, where m is the number of bits used for the integer part of the value, and n is the number of fraction bits.

By default, the notation describes signed binary fixed point format, with the unscaled integer being stored in two's complement format, used in most binary processors. The first bit always gives the sign of the value(1 = negative, 0 = non-negative), and it is not counted in the m parameter. Thus, the total number w of bits used is 1 + m + n.

For example, the specification Q3.12 describes a signed binary fixed-point number with a w = 16 bits in total, comprising the sign bit, three bits for the integer part, and 12 bits that are the fraction. That is, a 16-bit signed (two's complement) integer, that is implicitly multiplied by the scaling factor 2−12

In particular, when n is zero, the numbers are just integers. If m is zero, all bits except the sign bit are fraction bits; then the range of the stored number is from −1.0 (inclusive) to +1.0 (exclusive).

The m and the dot may be omitted, in which case they are inferred from the size of the variable or register where the value is stored. Thus, Q12 means a signed integer with any number of bits, that is implicitly multiplied by 2−12.

The letter U can be prefixed to the Q to denote an unsigned binary fixed-point format. For example, UQ1.15 describes values represented as unsigned 16-bit integers with an implicit scaling factor of 2−15, which range from 0.0 to (216−1)/215 = +1.999969482421875.
ARM version

## ARM

A variant of the Q notation has been in use by ARM. In this variant, the m number includes the sign bit. For example, a 16-bit signed integer would be denoted Q15.0 in the TI variant, but Q16.0 in the ARM variant.[2][3]
Characteristics

The resolution (difference between successive values) of a Qm.n or UQm.n format is always 2−n. The range of representable values depends on the notation used:
Range of representable values in Q notation Notation 	Texas Instruments Notation 	ARM Notation
Signed Qm.n 	−2m to +2m − 2−n 	−2m−1 to +2m−1 − 2−n
Unsigned UQm.n 	0 to 2m − 2−n 	0 to 2m − 2−n

For example, a Q15.1 format number requires 15+1 = 16 bits, has resolution 2−1 = 0.5, and the representable values range from −214 = −16384.0 to +214 − 2−1 = +16383.5. In hexadecimal, the negative values range from 0x8000 to 0xFFFF followed by the non-negative ones from 0x0000 to 0x7FFF.
Math operations

Q numbers are a ratio of two integers: the numerator is kept in storage, the denominator d {\displaystyle d} is equal to 2n.

Consider the following example:

    The Q8 denominator equals 28 = 256
    1.5 equals 384/256
    384 is stored, 256 is inferred because it is a Q8 number.

If the Q number's base is to be maintained (n remains constant) the Q number math operations must keep the denominator d {\displaystyle d} constant. The following formulas show math operations on the general Q numbers N 1 {\displaystyle N_{1}} and N 2 {\displaystyle N_{2}}. (If we consider the example as mentioned above, N 1 {\displaystyle N_{1}} is 384 and d {\displaystyle d} is 256.)

N 1 d + N 2 d = N 1 + N 2 d N 1 d − N 2 d = N 1 − N 2 d ( N 1 d × N 2 d ) × d = N 1 × N 2 d ( N 1 d / N 2 d ) / d = N 1 / N 2 d {\displaystyle {\begin{aligned}{\frac {N_{1}}{d}}+{\frac {N_{2}}{d}}&={\frac {N_{1}+N_{2}}{d}}\\{\frac {N_{1}}{d}}-{\frac {N_{2}}{d}}&={\frac {N_{1}-N_{2}}{d}}\\\left({\frac {N_{1}}{d}}\times {\frac {N_{2}}{d}}\right)\times d&={\frac {N_{1}\times N_{2}}{d}}\\\left({\frac {N_{1}}{d}}/{\frac {N_{2}}{d}}\right)/d&={\frac {N_{1}/N_{2}}{d}}\end{aligned}}}

Because the denominator is a power of two, the multiplication can be implemented as an arithmetic shift to the left and the division as an arithmetic shift to the right; on many processors shifts are faster than multiplication and division.

To maintain accuracy, the intermediate multiplication and division results must be double precision and care must be taken in rounding the intermediate result before converting back to the desired Q number.

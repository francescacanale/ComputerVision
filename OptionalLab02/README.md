# Practical - disparity computation (optional assignment)

## Part 1
Simply open the scripts provided and try and understand what is going on. This part should help you getting a feeling of the different challenges of a stereo vision pipeline.

## Part 2
This part is about implementing your version of disparity computation. This activity should help you in understanding in depth this part which is one of the core elements of the pipeline.

Implementation requirements:

- write a function d = my_ssd(N1,N2)  that takes in input two image patches and computes the SSD 

- write a function D = my_disparity(I1,I2,...WHAT ELSE?) that computes the disparity between I1 and I2. The function visits all pixels in I1 (careful to stay in the right range) and each possible disparity in the disparity region and calls my_ssd ...

- write a function D=my_disparity_final(....) that computes left-right and right-left disparities + left-right consistency

- to check the behavior of your implementation you may adapt script_disparity.m
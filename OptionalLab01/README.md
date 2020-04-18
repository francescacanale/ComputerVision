## Homework - playing with homographies (optional assignment)


The goal of this lab is play with homographies to address some typical problems.

## Problem 1: Correcting the perspective distortion of an image.
The goal is to estimate the homography that maps a real distorted shape into synthetic (virtual) non-distorted one
Download CODE&IMAGES
- You are asked to manually select 4 pairs of corresponding points (4 real and 4 synthetic...)
- First, try the provided implementation. Then, try and discard the bilinear interpolation step, to visually compare the quality of the virtual image 

## Problem 2: Estimating the homography between a pair of images.
Your aim is to estimate the homography H between a pair of images I1 and I2, again manually selecting the corresponding points.

Download CODE&IMAGES
- Build a virtual image I1v is estimated using inverse mapping
- As results, you may visualize  average of virtual I1v and true image I2 (the better the average, the closer the two images)
Try for the different image pairs we provided... When does the homography fail in mapping one image into the other?

## Problem 3 : Building a mosaic from a sequence of images.
Let us build images mosaic from a sequence of images acquired by purely rotating the camera exploiting  homographies.
Download CODE&IMAGES
- You have to select pairs of corresponding points between each image and a reference image (points must be visible in both views)
- Play with the number of images and of selected points...


## Remarks
Notice each example is self-contained, thus you might find the same function in more than one code folder.

After trying with the default implementation you may  vary some conditions, e.g.

- Changing the number of corresponding points you selected
- Adding the normalization of the points before computing the homographies (see last lab...)
- incorporating to one of the two problems a robust estimate of H through a RANSAC procedure (function available here)

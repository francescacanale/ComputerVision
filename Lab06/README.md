# Lab6 - Fundamental matrix estimation

## Goal
The goal of the lab is to understand and implement  the 8 points algorithm, to estimate the fundamental matrix F .

Please, read carefully the text below before starting!

## Code
1) 8 point algorithm function (version1)

Write down a Matlab function function [F] = EightPointsAlgorithm(P1, P2) implementing the following steps:

	1. Write down the matrix A (see the slides...)
	2. Compute the SVD decomposition of A 
	[U, D, V]=svd(A);
	and select as solution f the last column of V.
	Reshape column vector f so to obtain a matrix F (see function reshape)
	3. Force the rank of F to be 2:
		- Use again the SVD to decompose the matrix 
		[U, D, V] = svd(F)
		- Set D(3,3)=0
		- Recompute the final F: F=U*D*VT.

2) 8 point algorithm function (version2)

Write down a Matlab function function [F] = EightPointsAlgorithmN(P1, P2) implementing the following steps:

	1. Normalize the points using the function normalise2dpts provided.
		- [nP1, T1] = normalise2dpts(P1)

		- [nP2, T2]=normalise2dpts(P2)
	2. Write down the matrix A (see the slides...)
	3. Compute the SVD decomposition of A 
	[U, D, V]=svd(A);
	and select as solution f the last column of V.
	Reshape column vector f so to obtain a matrix F (see function reshape)
	4. Force the rank of F to be 2:
		- Use again the SVD to decompose the matrix 
		[U, D, V] = svd(F)
		- Set D(3,3)=0
		- Recompute the final F: F=U*D*VT.
	5. De-normalize the resulting F as T2T*F*T1. This is your final F
3) Prepare a script file 
You are requested to write down a Matlab script that includes the following functionalities:

	1. Load the two sets of corresponding points and arrange them in two matrices P1 and P2 with 3 rows and N columns, where N is the number of corresponding points 
	2. Call the function   for estimating the fundamental matrix F from P1 and P2
	3. Visualize the results and evaluate your estimated F (see Evaluation of the results below)


## Evaluation of the results
To verify your implementation consider the following tests:

1) Check the epipolar constraint (x'TFx=0) holds for all points with the estimated F (both with and without normalization)
2) Visualize the stereo pairs with epipolar lines of the corresponding points (use the function visualizeEpipolarLines provided with the Lab material) Type help visualizeEpipolarLines from the Matlab shell before using it (notice it requires the points to be arranged in Nx2 matrices). 
3) Have a look at the epipoles. To compute left and right epipoles, recall that they are respectively, the right and left null space of F, thus you can simply perform the SVD decomposition of F, F=UWVT,  and then select the last columns of U and V.

Additional tests (optional):

1) you may try and "break" your estimate by adding more and more erroneous point correspondences to your points. Since the 8 points algorithm use them all after a while the  estimate will be wrong.
2) In these cases we would need to resort to robust statistics methods such as RANSAC: you may have a look (and comment) at the behavior of other algorithms implemented in Matlab (see the function estimateFundamentalMatrix)
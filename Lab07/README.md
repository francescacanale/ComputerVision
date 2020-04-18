# Lab. 7 - Image Matching and Retrieval
The goal of this lab. activity is to assess different strategies for image retrieval, practicing with their use and observing differences among them.


## Material
Download the folder with provided code, models and images. NOTICE: As a first thing, run the script path_config.m you find in the folder.
Have a look at the slides about Image Matching and Image Retrieval to refresh your memory!

## Code
In the main folder you find two subfolders:
1) ImageMatching: the file Labo8_part1.m allows you to compute the matching between a pair of images using corner keypoints represented with SIFT descriptors. The matching is based on an affinity matrix including the similarities between keypoints comparing their position and appearance (using euclidean distance and Normalized-Cross Correlation) or their SIFT descriptors.
2) ImageRetrieval: the file Labo8_part2.m implements a solution for image retrieval using a representation based on SIFT descriptors and the bag-of-keypoints paradigm. 

## What to do
- Preliminary: Have a look at the code, starting from the main files. Run the matching on different image pairs among the ones provided, run the retrieval on the gallery made available and choosing one query image among them
- Analysis #1: Focus on image matching and observe the effect of changing the similarity function and its parameters, in particular the values of sigma and threshold on the similarity
- Analysis #2: Focus on image retrieval and observe the effect of using dictionaries of different size
- Optional:  Setup a procedure to perform image retrieval using the number of detected matches:
		- Given a query image, use the function findMatches.m to campare it with all the images in the gallery, and sort them in decreasing order with respect to the number of detected matches
		- For a given query image (of your choice) compare the results of image retrieval based on the procedure you set up at the previous point, and the one provided which is based on the bag of keypoints

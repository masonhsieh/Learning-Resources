// Core_Practice.cpp : Defines the entry point for the console application.
//
/*
OpenCV:
What is Mat?
	Mat is basically a class with two data parts: the matrix header (containing information such as the size of the matrix, the method used for storing, at which address is the matrix stored, and so on) and a pointer to the matrix containing the pixel values (taking any dimensionality depending on the method chosen for storing) . The matrix header size is constant, however the size of the matrix itself may vary from image to image and usually is larger by orders of magnitude.

	OpenCV is an image processing library. It contains a large collection of image processing functions. To solve a computational challenge, most of the time you will end up using multiple functions of the library. Because of this, passing images to functions is a common practice.
*/


#include "stdafx.h"
#include <iostream>
#include <opencv2\core.hpp>
#include <opencv2\highgui.hpp>

using namespace std;
using namespace cv;

int main(int argc, char** argv)
{

	Mat A, C;	// creates just the header parts
	A = imread(argv[1], IMREAD_COLOR);

	Mat B(A);	// Use the copy constructor
	C = A;		// Assignment operator

	Mat D(A, Rect(10, 10, 100, 100)); // using a rectangle
	Mat E = A(Range::all(), Range(1, 3)); // using row and column boundaries
	// : the last object that used it. This is handled by using a reference counting mechanism. Whenever somebody copies a header of a Mat object, a counter is increased for the matrix. Whenever a header is cleaned this counter is decreased. When the counter reaches zero the matrix too is freed. 

	// Copy Mat instance 
	Mat F = A.clone();
	Mat G;
	A.copyTo(G);

	Mat M(2, 2, CV_8UC3, Scalar(0, 0, 255));
	cout << "M = " << endl << M << endl << endl;

	int sz[3] = { 2,2,2 };
	Mat L(3, sz, CV_8UC(1), Scalar::all(0));

	M.create(4, 4, CV_8UC(2));
	cout << "M = " << endl << " " << M << endl << endl;




    return 0;
}


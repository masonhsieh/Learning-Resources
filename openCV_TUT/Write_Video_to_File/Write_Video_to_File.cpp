// Write_Video_to_File.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"
#include <opencv2\core.hpp>
#include <opencv2\highgui.hpp>
#include <opencv2\opencv.hpp>
#include <opencv2\video.hpp>
#include <opencv2\videoio.hpp>
#include <iostream>
#include <string>

using namespace cv;
using namespace std;

string intToString(int number) {
	std::stringstream ss;
	ss << number;
	return ss.str();
}

int main(int argc, char* argv[])
{
	bool recording = false;
	bool startNewRecording = true;
	int videoNumber = 0;

	VideoCapture cap(0); // open the video camera no. 0
	cv::VideoWriter writer;

	if (!cap.isOpened())  // if not success, exit program
	{
		cout << "ERROR INITIALIZING VIDEO CAPTURE" << endl;
		return -1;
	}

	string windowName = "Webcam Feed";
	namedWindow(windowName, cv::WindowFlags::WINDOW_AUTOSIZE); //create a window to display our webcam feed

	//fourcc integer
	//www.fourcc.org/
	int fcc = cv::VideoWriter::fourcc('D', 'I', 'V', '3');

	//frames per sec integer
	int fps = 10;

	//frame size
	cv::Size frameSize(cap.get(cv::VideoCaptureProperties::CAP_PROP_FRAME_WIDTH), 
		cap.get(cv::VideoCaptureProperties::CAP_PROP_FRAME_HEIGHT));

	Mat frame;
	while (1) {
		if (startNewRecording) {
			startNewRecording = false;
			recording = true;

			videoNumber++;

			//filename string
			string filename = "D:/openCV_TUT/Write_Video_to_File/testVideo" + intToString(videoNumber) + ".avi";
			writer = VideoWriter(filename, fcc, fps, frameSize);
			if (!writer.isOpened()) {
				cout << "ERROR OPENING FILE FOR WRITE" << endl;
				getchar();
				return -1;
			}
		}

		bool bSuccess = cap.read(frame); // read a new frame from camera feed
		if (!bSuccess) //test if frame successfully read 
		{
			cout << "ERROR READING FRAME FROM CAMERA FEED" << endl;
			break;
		}

		if (recording) {
			writer.write(frame);
			putText(frame, "REC", Point(0, 60), 2, 2, Scalar(0, 0, 255));
		}

		imshow(windowName, frame); //show the frame in "MyVideo" window

		//listen for 10ms for a key to be pressed
		switch (waitKey(10)) {
		case 27:
			//'esc' has been pressed (ASCII value for 'esc' is 27)
			//exit program.
			return 0;
		case 114:
		//r button is pressed
			//toggle recording
			recording = !recording;
			if (recording)
				cout << "Begin Recording" << endl;
			else
				cout << "Recording Paused" << endl;
			break;

		case 110:
		//n button is pressed
			// start new recording
			startNewRecording = true;
			cout << "New recording started" << endl;
			break;
		}
	}

	return 0;
}
////////////////////////////////////////////////////////////////////////////////////////////
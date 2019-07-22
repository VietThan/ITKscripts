// File name: 	NormalizeIntense.cpp
// Author: 	Viet Than
// Email: 	viet.than@vanderbilt.edu (thanhoangviet@gmail.com)
// Lab: 	Medical Imaging Lab under Ipek Oguz at Vanderbilt University, TN, USA
// Description: Calculate regional intensity then normalize the entire 2D slice
// 		



#include "itkImage.h"
#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"


#include <string>
#include <iostream>
#include <chrono>
#include <cmath>

using namespace itk;

//helper functions
std::string makeInputFileName (const std::string &filename, const std::string &filetype);
std::string makeOutputFileName (const std::string &filename, const std::string &filetype);



// 6 arguments:
// 1 - filename
// 2 - type
// 3 - x
// 4 - y
// 5 - step
int main(int argc, char * argv []){

	std::cout << "Starting histogram filter on slices"  << std::endl;

	if (argc > 6){
		std::cout << "too many arguments" << std::endl;
		return EXIT_FAILURE;
	}

	auto begin = std::chrono::high_resolution_clock::now();	

	// setting up arguments
	std::string filename, type;
	int x, y, step;
	
	// constexpr, computation at compile time
	constexpr unsigned int Dimension = 2;
	constexpr float intensityMinimum = 0.0;
	constexpr float intensityMaximum = 255.0;
	
	if (argc == 6){
		std::cout << "Accepted input arguments" << std::endl;
		filename = argv[1];
		type = argv[2];
		x = atoi(argv[3]);
		y = atoi(argv[4]);
		step = atoi(argv[5]);
	} else {
		std::cout << "Not enough arguments, went with default" << std::endl;
		filename = "slice000"; 
		type = ".tif";
		x = 25;
		y = 25;
		step = 10;

	}
	//timing

	std::string inputFileName = makeInputFileName(filename, type);	// input is assumed in ../data/
	std::string outputFileName = makeOutputFileName(filename, type);
	

	std::cout << "x: " << x << "\n";
	std::cout << "y: " << y << "\n";
	std::cout << "step: " << step << "\n";
	std::cout << "filename: " << inputFileName << "\n";
	
	
	// setting up reader type
	using imagePixelType = float;						// float is ITK acceptable
	using ImageType = itk::Image< imagePixelType, Dimension>;		// ImageType is used for both input and output
	using ReaderType = itk::ImageFileReader< ImageType >;
	
	// Setting up writer
	using WriterType = itk::ImageFileWriter< ImageType >;
	WriterType::Pointer writer = WriterType::New();
	writer->SetFileName( outputFileName );

	// setting up image reader
	ReaderType::Pointer reader = ReaderType::New();
	reader->SetFileName( inputFileName );
	
	// retrieve image with Update()
  	try{
    		reader->Update();
	} catch( itk::ExceptionObject & err ){
    		std::cerr << "ExceptionObject caught !" << std::endl;
    		std::cerr << err << std::endl;
    		return EXIT_FAILURE;
    	}


	auto stop = std::chrono::high_resolution_clock::now();
	auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(stop - begin);
	std::cout << duration.count() << " milliseconds for reading in the file and creating constants"<<std::endl;

	// get image and region
	ImageType::Pointer image = reader->GetOutput();
	ImageType::RegionType region = image->GetLargestPossibleRegion();
	ImageType::SizeType size = region.GetSize();
	int width = size[0];
	int height = size[1];

	if ((x-step)<0 || (x+step)>=width){std::cout<<"step is out of bound x\n";return EXIT_FAILURE;}
	if ((y-step)<0 || (y+step)>=height){std::cout<<"step is out of bound y\n";return EXIT_FAILURE;}

	// calculating mean
	imagePixelType totalSum = 0;
	imagePixelType min = 4;
	imagePixelType max = 0;
	imagePixelType pixelNum = (2*step+1)*(2*step+1);
	for (int i = (x-step); i <= (x + step); ++i){
		for (int j = (y-step); j <= (y+step); ++j){
			ImageType::IndexType index = {{ i , j }};
			imagePixelType curPix = image->GetPixel(index);
			if (curPix > max){max = curPix;}
			if (curPix < min){min = curPix;}
			totalSum += curPix;
		}
	}	

	imagePixelType mean = totalSum/pixelNum;

	std::cout << "sum: " << totalSum << "\n";
	std::cout << "# of pixels: " << pixelNum << "\n";
	std::cout << "mean: " << mean << "\n";
	std::cout << "min: " << min << "\n";
	std::cout << "max: " << max << "\n";


	// calculating std.dev.
	imagePixelType totalSqSum = 0;
	for (int i = (x-step); i <= (x + step); ++i){
		for (int j = (y-step); j <= (y+step); ++j){
			ImageType::IndexType index = {{ i , j }};
			imagePixelType curPix = image->GetPixel(index);
			totalSqSum += std::pow((curPix-mean), 2);
		}
	}	

	imagePixelType variance = totalSqSum/(pixelNum-1);
	imagePixelType stdDev = std::sqrt(variance);

	std::cout << "variance: " << variance << "\n";
	std::cout << "std.dev.: " << stdDev << "\n";
	
	stop = std::chrono::high_resolution_clock::now();
	duration = std::chrono::duration_cast<std::chrono::milliseconds>(stop - begin);
	std::cout << duration.count() << " milliseconds for calculating mean and standard deviation"<<std::endl;

	// setting the pixel values
	for (int i = 0; i < width; ++i){
		for(int j = 0; j < height; ++j){
			ImageType::IndexType index = {{ i , j }};
			imagePixelType curPix = image->GetPixel(index);
			image->SetPixel( index, ((curPix-mean)/stdDev) );
		}
	}
	
	
	// write out image
	writer->SetInput( image );
	writer->SetUseCompression(true);
	
	try {
	writer->Update();
	} catch ( itk::ExceptionObject & error ){
	std::cerr << "Error: " << error << "\n";
	return EXIT_FAILURE;
	}

	
	stop = std::chrono::high_resolution_clock::now();
	duration = std::chrono::duration_cast<std::chrono::milliseconds>(stop - begin);
	std::cout << duration.count() << " milliseconds for file written out succesfully\n"<<std::endl;
	return EXIT_SUCCESS;
}

//Creating the input file name for a nifti
std::string makeInputFileName (const std::string &filename, const std::string &inputType){
	std::string inputFileName = "../data/";
	inputFileName.append(filename);
	inputFileName.append(inputType);
	return inputFileName;
}


std::string makeOutputFileName (const std::string &filename, const std::string &filetype){
	std::string OutputFileName = "../output/";
	OutputFileName.append(filename);
	OutputFileName.append("_").append("Norm");
	OutputFileName.append(filetype);
	return OutputFileName;
}


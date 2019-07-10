// File name: 	IntenseSlice.cpp
// Author: 	Viet Than
// Email: 	viet.than@vanderbilt.edu (thanhoangviet@gmail.com)
// Lab: 	Medical Imaging Lab under Ipek Oguz at Vanderbilt University, TN, USA
// Description: Calculate regional average intensity 
// 		



#include "itkImage.h"
#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"

#include "itkExtractImageFilter.h"
#include "itkPasteImageFilter.h"


#include <string>
#include <iostream>
#include <chrono>

using namespace itk;

//helper functions
std::string makeInputFileName (const std::string &filename, const std::string &filetype);
std::string makeOutputFileName (const std::string &filename1, const std::string &filename2, const std::string &filetype);



// 5 arguments:
// 1 - filename1
// 2 - filename2
// 3 - type
// 4 - x
// 5 - y
// 6 - step
int main(int argc, char * argv []){

	std::cout << "Starting histogram filter on slices"  << std::endl;

	if (argc > 7){
		std::cout << "too many arguments" << std::endl;
		return EXIT_FAILURE;
	}

	// setting up arguments
	std::string filename1, filename2, type;
	int x, y, step;
	
	// constexpr, computation at compile time
	constexpr unsigned int Dimension = 2;
	constexpr float intensityMinimum = 0.0;
	constexpr float intensityMaximum = 255.0;
	
	if (argc == 7){
		std::cout << "Accepted input arguments" << std::endl;
		filename1 = argv[1];
		filename2 = argv[2];
		type = argv[3];
		x = atoi(argv[4]);
		y = atoi(argv[5]);
		step = atoi(argv[6]);
	} else {
		std::cout << "Not enough arguments, went with default" << std::endl;
		filename1 = "slice000"; 
		filename2 = "slice001"; 
		type = ".tif";
		x = 25;
		y = 25;
		step = 15;

	}
	//timing
	auto begin = std::chrono::high_resolution_clock::now();	

	std::string inputFileName1 = makeInputFileName(filename1, type);	// input is assumed in ../data/
	std::string inputFileName2 = makeInputFileName(filename2, type);	// input is assumed in ../data/
	std::string outputFileName = makeOutputFileName(filename1, filename2, type);
	

	std::cout << "x: " << x << "\n";
	std::cout << "y: " << y << "\n";
	std::cout << "step: " << step << "\n";
	std::cout << "filename1: " << inputFileName1 << "\n";
	std::cout << "filename2: " << inputFileName2 << "\n";

	auto stop = std::chrono::high_resolution_clock::now();
	auto duration = std::chrono::duration_cast<std::chrono::milliseconds>(stop - begin);
	std::cout << duration.count() << " milliseconds for reading in the file and creating constants"<<std::endl;
	
	// setting up reader type
	using imagePixelType = short;						// short is faster
	using ImageType = itk::Image< imagePixelType, Dimension>;		// ImageType is used for both input and output
	using ReaderType = itk::ImageFileReader< ImageType >;
	
	// Setting up writer
	using WriterType = itk::ImageFileWriter< ImageType >;
	WriterType::Pointer writer = WriterType::New();
	writer->SetFileName( outputFileName );

	// setting up image reader
	ReaderType::Pointer imageReader1 = ReaderType::New();
	imageReader1->SetFileName( inputFileName1 );
	ReaderType::Pointer imageReader2 = ReaderType::New();
	imageReader2->SetFileName( inputFileName2 );
	
	// retrieve image with Update()
  	try{
    		imageReader1->Update();
		imageReader2->Update();
	} catch( itk::ExceptionObject & err ){
    		std::cerr << "ExceptionObject caught !" << std::endl;
    		std::cerr << err << std::endl;
    		return EXIT_FAILURE;
    	}


	// get images
	ImageType::Pointer image1 = imageReader1->GetOutput();
	ImageType::Pointer image2 = imageReader2->GetOutput();

	std::cout << "check\n";
	imagePixelType sum1 = 0;
	imagePixelType sum2 = 0;
	imagePixelType min = 10;
	imagePixelType max = 0;
	for (int i = (x-step); i <= (x + step); ++i){
		for (int j = (y-step); j <= (y+step); ++j){
			ImageType::IndexType index = {{ i , j }};
			imagePixelType curPix = image1->GetPixel(index);
			if (curPix > max){max = curPix;}
			if (curPix < min){min = curPix;}
			sum1 += image1->GetPixel(index);
			sum2 += image2->GetPixel(index);
		}
	}	

	std::cout << "sum1: " << sum1 << "\n";
	std::cout << "sum2: " << sum2 << "\n";
	std::cout << "# of pixels: " << (2*step+1)*(2*step+1) << "\n";
	std::cout << "mean1: " << sum1/((2*step+1)*(2*step+1)) << "\n";
	std::cout << "mean2: " << sum2/((2*step+1)*(2*step+1)) << "\n";
	std::cout << "min: " << min << "\n";
	std::cout << "max: " << max << "\n";

}

//Creating the input file name for a nifti
std::string makeInputFileName (const std::string &filename, const std::string &inputType){
	std::string inputFileName = "../data/";
	inputFileName.append(filename);
	inputFileName.append(inputType);
	return inputFileName;
}


std::string makeOutputFileName (const std::string &filename1, const std::string &filename2, const std::string &filetype){
	std::string OutputFileName = "../output/";
	OutputFileName.append(filename1);
	OutputFileName.append("_").append(filename2);
	OutputFileName.append(filetype);
	return OutputFileName;
}


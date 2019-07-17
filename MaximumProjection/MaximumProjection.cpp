// File name: 	MaximumProjection.cpp
// Author: 	Viet Than
// Email: 	viet.than@vanderbilt.edu (thanhoangviet@gmail.com)
// Lab: 	Medical Imaging Lab under Ipek Oguz at Vanderbilt University, TN, USA
// Description: Visualization tool
// 		



#include "itkImage.h"
#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"

#include "itkMaximumProjectionImageFilter.h"


#include <string>
#include <iostream>
#include <chrono>
#include <cmath>

using namespace itk;

//helper functions
std::string makeInputFileName (const std::string &filename, const std::string &filetype);
std::string makeOutputFileName (const std::string &filename, const std::string &filetype);



// 4 arguments:
// 1 - filename
// 2 - type
// 3 - direction
int main(int argc, char * argv []){

	std::cout << "Starting histogram filter on slices"  << std::endl;

	if (argc > 6){
		std::cout << "too many arguments" << std::endl;
		return EXIT_FAILURE;
	}

	auto begin = std::chrono::high_resolution_clock::now();	

	// setting up arguments
	std::string filename, type;
	int direction;
	
	// constexpr, computation at compile time
	constexpr unsigned int Dimension = 3;
	constexpr float intensityMinimum = 0.0;
	constexpr float intensityMaximum = 255.0;
	
	if (argc == 4){
		std::cout << "Accepted input arguments" << std::endl;
		filename = argv[1];
		type = argv[2];
		direction = atoi(argv[3]);
	} else {
		std::cout << "Not enough arguments, went with default" << std::endl;
		filename = "volume_250_250_200_rescaled_Hessian_0p8_1p0_250p0_2p0_11p0_10"; 
		type = ".nii.gz";
		direction = 0;

	}

	std::string inputFileName = makeInputFileName(filename, type);	// input is assumed in ../data/
	std::string outputFileName = makeOutputFileName(filename, type);
	

	std::cout << "filename: " << inputFileName << "\n";
	
	
	// setting up reader type
	using imagePixelType = unsigned char;						// float is ITK acceptable
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

	
	using ProjectionType = itk::MaximumProjectionImageFilter< ImageType , ImageType >;
	ProjectionType::Pointer projection = ProjectionType::New();
	projection->SetInput( reader->GetOutput() );
	projection->SetProjectionDimension( direction );
	std::cout << "GetProjectionDimension(): " << projection->GetProjectionDimension() << "\n";
	
	// write out image
	writer->SetInput( projection->GetOutput() );
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
	OutputFileName.append("proj_").append(filename);
	OutputFileName.append(".png");
	return OutputFileName;
}


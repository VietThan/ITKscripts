// File name: 	MaximumProjection.cpp
// Author: 	Viet Than
// Email: 	viet.than@vanderbilt.edu (thanhoangviet@gmail.com)
// Lab: 	Medical Imaging Lab under Ipek Oguz at Vanderbilt University, TN, USA
// Description: Visualization tool
// 		



#include "itkImage.h"
#include "itkImageFileReader.h"
#include "itkImageFileWriter.h"

#include "itkExtractImageFilter.h"


#include <string>
#include <iostream>
#include <chrono>
#include <cmath>

using namespace itk;

//helper functions
std::string makeInputFileName (const std::string &filename);
std::string makeOutputFileName (const std::string &filename, const std::string &outType, const int &direction, const int &slice);



// 5 arguments:
// 1 - filename
// 2 - outType
// 3 - direction
// 4 - slice number
int main(int argc, char * argv []){

	std::cout << "Starting extracting a slice"  << std::endl;

	if (argc > 5){
		std::cout << "too many arguments" << std::endl;
		return EXIT_FAILURE;
	}

	auto begin = std::chrono::high_resolution_clock::now();	

	// setting up arguments
	std::string filename, outType;
	int direction, slice;
	
	// constexpr, computation at compile time
	constexpr unsigned int Dimension = 3;
	constexpr float intensityMinimum = 0.0;
	constexpr float intensityMaximum = 255.0;
	
	if (argc == 5){
		std::cout << "Accepted input arguments" << std::endl;
		filename = argv[1];
		outType = argv[2];
		direction = atoi(argv[3]);
		slice = atoi(argv[4]);
	} else {
		std::cout << "Not enough arguments, went with default" << std::endl;
		filename = "proj_norm.nii"; 
		outType = ".tif";
		direction = 0;
		slice = 0;

	}

	std::string inputFileName = makeInputFileName(filename);	// input is assumed in ../data/
	std::string outputFileName = makeOutputFileName(filename, outType, direction, slice);
	

	std::cout << "filename: " << inputFileName << "\n";
	std::cout << "  output: " << outputFileName << "\n";
	
	
	// setting up reader type
	using imagePixelType = float;						// float is ITK acceptable
	using InputImageType = itk::Image< imagePixelType,  3 >;
  	using OutputImageType = itk::Image< imagePixelType, 2 >;
	using ReaderType = itk::ImageFileReader< InputImageType >;
	
	// Setting up writer
	using WriterType = itk::ImageFileWriter< OutputImageType >;
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

	
	using ExtractFilter = itk::ExtractImageFilter< InputImageType, OutputImageType >;	
	ExtractFilter::Pointer extracted = ExtractFilter::New();
	extracted->InPlaceOn();
	extracted->SetDirectionCollapseToSubmatrix();
	
	InputImageType::RegionType inputRegion = reader->GetOutput()->GetLargestPossibleRegion();
	InputImageType::SizeType size = inputRegion.GetSize();
	size[direction]=0;
	InputImageType::IndexType start = inputRegion.GetIndex();
	start[direction] = slice;

	InputImageType::RegionType desiredRegion;
	desiredRegion.SetSize( size );
	desiredRegion.SetIndex( start );
	
	extracted->SetExtractionRegion( desiredRegion );
	extracted->SetInput( reader->GetOutput() );	

	// write out image
	writer->SetInput( extracted->GetOutput() );
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
std::string makeInputFileName (const std::string &filename){
	std::string inputFileName = "../data/";
	inputFileName.append(filename);
	return inputFileName;
}


std::string makeOutputFileName (const std::string &filename, const std::string &outType, const int &direction, const int &slice){
	std::string OutputFileName = "../output/";
	OutputFileName.append("slice_").append(std::to_string(direction)).append("_");
	OutputFileName.append(std::to_string(slice)).append("_");
	std::size_t point = filename.find(".");
	std::string temp = filename;
	temp.erase(temp.begin()+point, temp.end());
	OutputFileName.append(temp).append(outType);
	return OutputFileName;
}


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.7

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cvmfs/oasis.opensciencegrid.org/accre/mirror/optimized/sandy_bridge/easybuild/software/Compiler/GCCcore/5.4.0/CMake/3.7.1/bin/cmake

# The command to remove a file.
RM = /cvmfs/oasis.opensciencegrid.org/accre/mirror/optimized/sandy_bridge/easybuild/software/Compiler/GCCcore/5.4.0/CMake/3.7.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /scratch/thanv/ITKscripts/MaximumProjection

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /scratch/thanv/ITKscripts/MaximumProjection/build

# Include any dependencies generated for this target.
include CMakeFiles/MaximumProjection.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MaximumProjection.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MaximumProjection.dir/flags.make

CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o: CMakeFiles/MaximumProjection.dir/flags.make
CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o: ../MaximumProjection.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/scratch/thanv/ITKscripts/MaximumProjection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o"
	/accre/arch/easybuild/software/Core/GCCcore/5.4.0/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o -c /scratch/thanv/ITKscripts/MaximumProjection/MaximumProjection.cpp

CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.i"
	/accre/arch/easybuild/software/Core/GCCcore/5.4.0/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /scratch/thanv/ITKscripts/MaximumProjection/MaximumProjection.cpp > CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.i

CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.s"
	/accre/arch/easybuild/software/Core/GCCcore/5.4.0/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /scratch/thanv/ITKscripts/MaximumProjection/MaximumProjection.cpp -o CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.s

CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.requires:

.PHONY : CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.requires

CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.provides: CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.requires
	$(MAKE) -f CMakeFiles/MaximumProjection.dir/build.make CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.provides.build
.PHONY : CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.provides

CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.provides.build: CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o


# Object files for target MaximumProjection
MaximumProjection_OBJECTS = \
"CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o"

# External object files for target MaximumProjection
MaximumProjection_EXTERNAL_OBJECTS =

MaximumProjection: CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o
MaximumProjection: CMakeFiles/MaximumProjection.dir/build.make
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkdouble-conversion-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitksys-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkvnl_algo-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkvnl-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkv3p_netlib-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitknetlib-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkvcl-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKCommon-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkNetlibSlatec-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKStatistics-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKTransform-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKLabelMap-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKMesh-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkzlib-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKMetaIO-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKSpatialObjects-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKPath-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKQuadEdgeMesh-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOImageBase-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKOptimizers-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKPolynomials-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKBiasCorrection-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKBioCell-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKDICOMParser-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKEXPAT-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOXML-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOSpatialObjects-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKFEM-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmDICT-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmMSFF-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKznz-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKniftiio-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKgiftiio-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkhdf5_cpp.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkhdf5.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOBMP-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOBioRad-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOCSV-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOGDCM-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOIPL-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOGE-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOGIPL-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOHDF5-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkjpeg-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOJPEG-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitktiff-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTIFF-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOLSM-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOMRC-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOMesh-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOMeta-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIONIFTI-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKNrrdIO-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIONRRD-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkpng-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOPNG-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOSiemens-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOStimulate-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKTransformFactory-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformBase-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformHDF5-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformInsightLegacy-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformMatlab-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOVTK-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKKLMRegionGrowing-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKOptimizersv4-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkopenjpeg-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKVTK-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKWatersheds-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKReview-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKVideoCore-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKVideoIO-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKVtkGlue-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKgiftiio-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKLabelMap-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKQuadEdgeMesh-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKPolynomials-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKBiasCorrection-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKBioCell-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOSpatialObjects-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOXML-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKFEM-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKOptimizers-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOBMP-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOBioRad-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOGDCM-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmMSFF-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmDICT-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmIOD-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKEXPAT-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmDSED-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmCommon-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmjpeg8-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmjpeg12-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmjpeg16-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmopenjpeg-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmcharls-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkgdcmuuid-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOGE-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOGIPL-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOJPEG-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTIFF-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitktiff-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkjpeg-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOMeta-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKMetaIO-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIONIFTI-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKniftiio-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKznz-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIONRRD-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKNrrdIO-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOPNG-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkpng-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOSiemens-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOIPL-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOStimulate-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformHDF5-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkhdf5_cpp.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkhdf5.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkzlib-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformInsightLegacy-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformMatlab-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOTransformBase-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKTransformFactory-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOVTK-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKKLMRegionGrowing-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkopenjpeg-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKWatersheds-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKStatistics-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkNetlibSlatec-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKSpatialObjects-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKMesh-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKTransform-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKPath-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKIOImageBase-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKVideoCore-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKVTK-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKCommon-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkdouble-conversion-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitksys-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libITKVNLInstantiation-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkvnl_algo-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkvnl-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkv3p_netlib-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitknetlib-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/ITK/4.12.2-Python-2.7.12/lib/libitkvcl-4.12.a
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkRenderingOpenGL-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/libGLU/9.0.0/lib/libGLU.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCCcore/5.4.0/X11/20160819/lib/libSM.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCCcore/5.4.0/X11/20160819/lib/libICE.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCCcore/5.4.0/X11/20160819/lib/libX11.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCCcore/5.4.0/X11/20160819/lib/libXext.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCCcore/5.4.0/X11/20160819/lib/libXt.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkImagingHybrid-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkIOImage-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkDICOMParser-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkIOCore-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkmetaio-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkpng-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtktiff-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkjpeg-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkRenderingFreeType-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkftgl-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkfreetype-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkzlib-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/Mesa/12.0.2/lib/libGL.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkInteractionStyle-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkRenderingCore-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonColor-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkFiltersGeometry-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkFiltersExtraction-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkFiltersStatistics-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkImagingFourier-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkalglib-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkFiltersSources-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkFiltersGeneral-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkFiltersCore-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonComputationalGeometry-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkImagingSources-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkImagingCore-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonExecutionModel-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonDataModel-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonMisc-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonSystem-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonTransforms-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonMath-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkWrappingPython27Core-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkCommonCore-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtksys-6.3.so.1
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/Python/2.7.12/lib/libpython2.7.so
MaximumProjection: /accre/arch/easybuild/software/Compiler/GCC/5.4.0-2.26/VTK/6.3.0-Python-2.7.12/lib/libvtkWrappingTools-6.3.a
MaximumProjection: CMakeFiles/MaximumProjection.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/scratch/thanv/ITKscripts/MaximumProjection/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable MaximumProjection"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MaximumProjection.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MaximumProjection.dir/build: MaximumProjection

.PHONY : CMakeFiles/MaximumProjection.dir/build

CMakeFiles/MaximumProjection.dir/requires: CMakeFiles/MaximumProjection.dir/MaximumProjection.cpp.o.requires

.PHONY : CMakeFiles/MaximumProjection.dir/requires

CMakeFiles/MaximumProjection.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MaximumProjection.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MaximumProjection.dir/clean

CMakeFiles/MaximumProjection.dir/depend:
	cd /scratch/thanv/ITKscripts/MaximumProjection/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /scratch/thanv/ITKscripts/MaximumProjection /scratch/thanv/ITKscripts/MaximumProjection /scratch/thanv/ITKscripts/MaximumProjection/build /scratch/thanv/ITKscripts/MaximumProjection/build /scratch/thanv/ITKscripts/MaximumProjection/build/CMakeFiles/MaximumProjection.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MaximumProjection.dir/depend


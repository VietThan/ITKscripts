# Collection of ITK scripts for small stuff
<p align="center"><img src="https://itk.org/opensourcelogos/itk.png" width=150></p>

<p align="left">
	<img src="https://img.shields.io/badge/platform-ubuntu-blueviolet?style=for-the-badge"
			 alt="platform">
	<img src="https://img.shields.io/badge/language-C++11-green?style=for-the-badge"
			 alt="language">
  	<img src="https://img.shields.io/badge/compiler-GCC 5.4.0-green?style=for-the-badge"
			 alt="compiler">
	<img src="https://img.shields.io/badge/builder-cmake 3.7.1-green?style=for-the-badge"
			 alt="builder">
	<img src="https://img.shields.io/badge/library-ITK 4.12.2|Python2.7.12-critical?style=for-the-badge"
			 alt="compiler">
</p>

## General Information
### Useful information about ITK
Dimensions {x, y. z} corresponds to [0], [1], [2] when workin with ITK arrays that uses those dimensions/directions (index, size etc.)

Read more about ITK at <a href="https://itk.org/">itk.org</a>

### Useful information about styles
* For input, `type` means the file type associated with `filename`.
* The scrips make output filenames themselves by using the input filename and append useful information about what happened.
* If the program runs with more arguments than specified, the program will `EXIT_FAILURE`. 
* If the program runs with less arguments than specified, default arguments will be ran.<br>
## Scripts
### HistogramSlice
Incomplete. From a 3D volume take out the middle slice (accordance to some direction), and use it to histogram match parallel slices

### IntenseSlice
Complete. Take in two slices of images and compute some regional information based on 2D coordinate inputs.<br>

Arguments: ```./IntenseSlice [filename1] [filename2] [type] [x] [y] [step]```

Default: ```./IntenseSlice slice000 slice001 .tif 25 25 15```

### NormalizeIntense
Complete. Take a 2D slice and then normalize them by regional parameters.<br>
Working on. Take a 3D volume, work on each slice like above.<br>

Arguments: ```./NormalizeIntese [filename] [type] [x] [y] [step]```

Default: ```./NormalizeIntense slice000 .tif 25 25 10```

### MaximumProjection<br>
Complete. Take the maximum value of a direction to output a projection.<br>

Arguments: ```./MaximumProjection [filename] [type] [direction]```

Default: ```./MaximumProjection volume .nii.gz 0```

### ExtractSlice
Complete. extract a 2D slice depending on direction<br>

Arguments: ```./ExtractSlice [filename] [outType] [direction] [slice#]```

Default: ```./ExtractSlice proj_norm.nii .tif 0```

## More

### Useful c3d commands
* ```c3d slice{000..499)_Norm.tif -tile z -o volume.nii.gz```
* ```c3d Smallfield_OCT_Angiography_Volume_fovea.nii -slice x 0:-1 -oo slice%03d.tif```
* ~~```c3d volume_250_250_200.nii.gz -stretch 0% 100% 0 255 volume_250_250_200_rescaled.nii.gz```~~ (This command has problems)

### Useful ImageMath commands
* ```ImageMath volume_norm_tif.nii -rescale 0,255 -type float -outfile volume_imagemath.nii```

### Useful bash commands
* ```for i in {000..499}; do ./NormalizeIntense slice$i .nii 250 250 200; done```

## Author and Acknowledgements
Author: Viet Than, Department of EECS, Vanderbilt University, US.<br>
Supervisor: Ipek Oguz, Prof. Department of EECS, Vanderbilt University, US.

With the help of the Medical Image Computing Lab.

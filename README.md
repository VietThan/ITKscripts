# Collection of ITK scripts for small stuff<br><br>
## General Information<br>
### Useful information about ITK<br>
Dimensions {x, y. z} corresponds to [0], [1], [2] when workin with ITK arrays that uses those dimensions/directions (index, size etc.)<br>
Read more about ITK at <a href="https://itk.org/">itk.org</a>
### Useful information about styles
For input, when I use `type`, it means the file type associated with `filename`. This was used for ease of access and making output file name. In theory, every script will append useful information about what happened and as such based the output filename  on `filename`.<br>
If the program runs with more arguments than specified, the program will `EXIT_FAILURE`. If the program runs with less arguments than specified, default arguments will be ran.<br> <br>
## Scripts<br>
### HistogramSlice<br>
Incomplete. From a 3D volume take out the middle slice (accordance to some direction), and use it to histogram match parallel slices<br>
### IntenseSlice<br>
Complete. Take in two slices of images and compute some regional information based on 2D coordinate inputs.<br>
>Arguments:<br>
>`./IntenseSlice [filename1] [filename2] [type] [x] [y] [step]`<br>
>Default:<br>
>`./IntenseSlice slice000 slice001 .tif 25 25 15`<br>
### NormalizeIntense<br>
Complete. Take a 2D slice and then normalize them by regional parameters.<br>
Working on. Take a 3D volume, work on each slice like above.<br>
>Arguments:<br>
>`./NormalizeIntese [filename] [type] [x] [y] [step]`<br>
>Default:<br>
>`./NormalizeIntense slice000 .tif 25 25 10`<br>
### MaximumProjection<br>
Complete. Take the maximum value of a direction to output a projection.<br>
>Arguments:<br>
>`./MaximumProjection [filename] [type] [direction]`<br>
>Default:<br>
>`./MaximumProjection volume .nii.gz 0`<br>
### ExtractSlice<br>
Complete. extract a 2D slice depending on direction<br>
>Arguments:<br>
>`./ExtractSlice [filename] [outType] [direction] [slice#]`<br>
>Default:<br>
>`./ExtractSlice proj_norm.nii .tif 0`<br><br>
## More<br>
### Useful c3d commands<br>
c3d slice{000..499)_Norm.tif -tile z -o volume.nii.gz<br>
c3d Smallfield_OCT_Angiography_Volume_fovea.nii -slice x 0:-1 -oo slice%03d.tif<br>
(this command seems to have problems) c3d volume_250_250_200.nii.gz -stretch 0% 100% 0 255 volume_250_250_200_rescaled.nii.gz<br>
### Useful ImageMath commands<br>
ImageMath volume_norm_tif.nii -rescale 0,255 -type float -outfile volume_imagemath.nii<br>
### Useful bash commands<br>
for i in {000..499}; do ./NormalizeIntense slice$i .nii 250 250 200; done<br> 


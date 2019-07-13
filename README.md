# Collection of ITK scripts for small stuff<br>
## HistogramSlice<br>
Incomplete. From a 3D volume take out the middle slice (accordance to some direction), and use it to histogram match parallel slices<br>
## IntenseSlice<br>
Complete. Take in two slices of images and compute some regional information based on 2D coordinate inputs
## NormalizeIntense<br>
Working on. Take out slices of images and then normalize them by regional parameters.<br>
## Useful c3d commands<br>
c3d slice{000..499_Norm.tif -tile z -o volume.nii.gz<br>
c3d Smallfield_OCT_Angiography_Volume_fovea.nii -slice x 0:-1 -oo slice%03d.tif<br>
c3d volume_250_250_200.nii.gz -stretch 0% 100% 0 255 volume_250_250_200_rescaled.nii.gz<br>
## Useful bash commands<br>
for i in {000..499}; do ./NormalizeIntense slice$i .nii 250 250 200; done<br> 


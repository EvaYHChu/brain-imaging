set colscalebarflag 1
set fthresh 0.2
set fmid 0.3
set fslope 2.5


foreach file_name { FC_moco_smooth5_lhS1.mgh
FC_moco_smooth5_lhS2.mgh
FC_moco_smooth5_lhS3.mgh
FC_moco_smooth5_lhS4.mgh
FC_moco_smooth5_lhS5.mgh
FC_moco_smooth5_lhS6.mgh
FC_moco_smooth5_lhS7.mgh
FC_moco_smooth5_lhS8.mgh
FC_moco_smooth5_lhS9.mgh

} {

        puts $file_name
	set val $file_name
	sclv_read_bfile_values 0  /home/fsluser/Documents/eva/fmri/motionCorr/$file_name /home/fsluser/Documents/eva/fmri/epi_reg/register.partial.dat
	make_lateral_view	
	redraw
	save_tiff ${file_name}_lateral.tiff


	rotate_brain_y 180
	redraw
	save_tiff ${file_name}_medial.tiff
}



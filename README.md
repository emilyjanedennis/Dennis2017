# Dennis2017
data and scripts necessary to re-create plots for Dennis2017

This folder Contains all data and scripts needed to replicate the plots presented in Dennis et al 2017. 

FOLDERS AND THEIR CONTENTS:

Fig3_ADLimaging
```
	Dennis2017_imaginganalysis.pdf		output of Dennis2017_imaginganalysis.Rmd
	Dennis2017_imaginganalysis.Rmd	makes all plots and statistics for ADL imaging data used in the manuscript including a separate control experiment completed to demonstrate that ethanol solvent alone cannot explain the responses to C9 nor DEET.
	Dennis2017_plot-rawdata.pdf		output of Dennis2017_plot-rawdata.Rmd
	Dennis2017_plot-rawdata.Rmd		plots all ImageJ-generated .txt files (before bleach-correct or deltaF/Fmax calculation). 
	c9adl		Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single wild type animal given pulses of 100nM C9 (in 0.15% ethanol) at 30-50s, 70-90s, and 110-130s
	c9mut		Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single str-217-/- mutant animal given pulses of 100nM C9 (in 0.15% ethanol) at 30-50s, 70-90s, and 110-130s
	c9res		Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single str-217-/- mutant animal expressing str-217 under the ADL-specific srh-220 promoter, given pulses of 100nM C9 (in 0.15% ethanol) at 30-50s, 70-90s, and 110-130s
	pt0adl		Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single wild type animal given pulses of 0.15% ethanol solvent at 30-50s, 70-90s, and 110-130s
	pt0mut	Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single mutant animal given pulses of 0.15% ethanol solvent at 30-50s, 70-90s, and 110-130s
	pt0res	Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single str-217-/- mutant animal expressing str-217 under the ADL-specific srh-220 promoter, given pulses of 0.15% ethanol at 30-50s, 70-90s, and 110-130s
	pt15adl	Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single wild type animal given pulses of 0.15% DEET (in 0.15% ethanol solvent) at 30-50s, 70-90s, and 110-130s
	pt15mut	Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single wild type animal given pulses of 0.15% DEET (in 0.15% ethanol solvent) at 30-50s, 70-90s, and 110-130s
	pt15res	Contains individual ImageJ-generated files reflecting fluorescence changes in a single ADL neuron over the course of a single experiment on a single wild type animal given pulses of 0.15% DEET (in 0.15% ethanol solvent) at 30-50s, 70-90s, and 110-130s
	smoothed_dfoverfmax	
			Contains a .csv file for each genotype/treatment combination. Each file Contains MATLAB-generated deltaF/Fmax values for each animal. These files are used by Dennis2017_imaginganalysis.Rmd
	ImageJ_scripts	
			Contains two macros used to trim original tiff stacks (remove light pre-exposure) and to track neurons and calculate fluorescence changes over time.
	MATLAB_scripts	
			Contains all MATLAB scripts used to analyze ImageJ-generated txt files and generate bleach-corrected deltaF/Fmax values. The ‘master’ script is GCaMP_ADL and requires the rest of the scripts to run properly.
	
```

Fig3_Cell-identification	performed by Xin Jin
```
	mutantstr-217_w1_L4_lv50ms.zvi		Contains the .zvi file used to generate the composite image in Figure 3a
```

Fig4_Tracking-and-Optogenetics	
Contains all .csv files needed to plot all tracking and optogenetics pausing behavior data in Figure 4
```
	figure4_reachr.pdf		Output of figure4_reachr.Rmd
	figure4_reachr.Rmd		Plots all ontogenetic data and statistics
	figure4_tracking.pdf		Output of figure4_tracking.Rmd
	figure4_tracking.Rmd	Plots all  tracking data and statistics
```

Figs1-3_Behavior
```
	Dennis_DEETandCelegans_behaviordata.csv	Actual data needed for plotting
	elegans_output.pdf		Output of the .Rmd script	
	elegans_output.Rmd	R markdown script
```

SuppFig1_AWCimaging	performed by May Dobosiewicz
```
	AWC_response_mags	All response magnitudes used by .Rmd file, originally generated by the MATLAB script
	N2_forplot			Smoothed frame-by-frame values for plotting traces
	str217_forplot		Smoothed frame-by-frame values for plotting traces
	AWC_response_mags_rawdata	
					All files used by MATLAB script in one xlsx file
	AWC_N2vSTR217_20161228_MATLABscript.txt	
					Contains MATLAB script used to generate response magnitudes
	responsemags.pdf		Output of responsemags.Rmd	
	responsemags.Rmd		Plots all response magnitudes and smoothed traces
```

SuppFig1_HEKimaging	performed by Laura Duvall
```
	hek_data.csv				Data used by .Rmd file, from the HEK mis-expression experiments
	Dennis2017_HEK_protocol.pdf	Detailed protocol used to generate these data
	hek_analysis_output.pdf		Output of hek_analysis_output.Rmd
	hek_analysis_output.Rmd		Plots HEK mis-expression data
```
OTHER FILES:
```
Dennis2017_master.xlsx
	Contains all data necessary for plotting in a multi-sheet excel file
Strains.xlsx
	Contains all strain data for any C. elegans strains generated for or used in this manuscript.
Strains.PDF
	Contains all strain data for any C. elegans strains generated for or used in this manuscript.
README.txt
```


Notes: 

	All R scripts were tested and run in RStudio, using R version 3.3.1 (2016-10-31), Sincere Pumpkin Patch on a x86_64-apple-darwin13.4.0

	All MATLAB scripts were tested and run on Matlab version 2014b. Additional scripts for analysis of tracking information can be found in Cho et al. “Parallel encoding of sensory history and behavioral preference during Caenorhabditis elegans olfactory learning” eLife 2016. doi: 10.7554/eLife.14000

	All ImageJ scripts were tested and run with ImageJ 1.48v, Java 1.6.0_65 (32-bit)

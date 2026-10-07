

/*==============================================================================
  Program: Platelet Analysis Values - Scatter Plot
  Purpose: Create a scatter plot of platelet analysis values for a selected
           treatment arm in the Safety Analysis Set.

  Study: XXXXXXX(YYYYYYY)

  Analysis: Safety Analysis
  Dataset : ADLB
  Output  : PNG scatter plot

  Programmer: Javan Mukunzi
  Date      : 07 October 2025
================================================================================*/
/*------------------------------------------------------------------------------
  1. Prepare the analysis dataset
------------------------------------------------------------------------------*/
data adlb_1;
   set adam.adlb;
   run;
   
/* Start ODS output destination */
   ods listing gpath="./output";
   
/*------------------------------------------------------------------------------
  3. Enable ODS Graphics
------------------------------------------------------------------------------*/
   ods graphics on / reset=all
                    width=8in
                    height=6in
                    imagename="scatter plot of platelets"
                    imagefmt=png;
                    
 /* Set PROC SGPLOT options for clean appearance */
                   
proc sgplot data=adlb_1
            noautolegend
            noborder;
            
              /* Filter data: Safety set, Treatment arm, and Parameter */
             
  where saffl = "Y" 
  and trt01a = "Treatment A" 
  and param = "B-Platelets, Particle Concentration (10^9/L)";
  
 /* Create scatter plot */
           
scatter x=avisit y=aval/
        markerattrs=(symbol=squarefilled
                    color=blue
                    size=3px);
                    
   /* Format axes */ 
  
 xaxis label="Analysis Visit Day"
       labelattrs=(size=11pt weight=bold);
 yaxis label="B-Platelets, Particle Concentration (10^9/L)"
       labelattrs=(size=12pt weight=bold);
       
   /* Add title and treatment arm label */
       
  title1 "Figure 11.3.8.2.6 	B-Platelets, Particle Concentration (10^9/L) values (Safety analysis set)";
  title2 h=10pt "Treatment Arm: DRUG A";
  run;
  
ods graphics off;


/*==============================================================================
  END OF PROGRAM
==============================================================================*/       

           

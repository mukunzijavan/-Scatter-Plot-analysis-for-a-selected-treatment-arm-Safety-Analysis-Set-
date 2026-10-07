# -Scatter-Plot-analysis-for-a-selected-treatment-arm-Safety-Analysis-Set-
To create a scatter plot showing  analysis values across analysis visit days for a treatment arm(Safety Analysis Set)
# Platelet Scatter Plot - Safety Analysis

## Overview

This project demonstrates the generation of a clinical laboratory scatter plot
using SAS PROC SGPLOT.

The analysis focuses on platelet laboratory measurements within the Safety
Analysis Set and demonstrates how analysis laboratory data can be transformed
into a publication-style clinical trial figure.

## Objective

To create a scatter plot showing platelet analysis values across analysis
visit days for an anonymized treatment arm.

## Input Dataset

**ADLB - Analysis Data Laboratory**

Key variables used:

- `USUBJID` - Unique Subject Identifier
- `SAFFL` - Safety Analysis Flag
- `TRT01AN` - Numeric Treatment Assignment
- `PARAM` - Laboratory Parameter
- `AVISIT` - Analysis Visit
- `AVAL` - Analysis Value

## Analysis Population

The figure uses subjects included in the Safety Analysis Set:

`SAFFL = "Y"`

## Treatment Anonymization

Treatment information has been intentionally anonymized for this public
portfolio project.

The programming logic uses:

`TRT01AN = 1`

and displays the treatment as:

**Treatment A**

No proprietary treatment names, study identifiers, sponsor information, or
production-system paths are included.

## SAS Techniques Demonstrated

- DATA step
- ADaM ADLB dataset usage
- Safety population filtering
- Treatment-arm filtering
- Laboratory parameter filtering
- `PROC SGPLOT`
- Scatter plot generation
- ODS Graphics
- PNG output generation
- Axis and marker formatting
- Publication-style figure titles

## Output

The program generates a PNG scatter plot displaying platelet analysis values
against analysis visit day.

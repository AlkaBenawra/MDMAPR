
<!-- README.md is generated from README.Rmd. Please edit that file -->

# MDMAPR

<!-- badges: start -->

<!-- badges: end -->

<kbd><img src="Images/mdmaprlogo.jpg" width=600></kbd>

The MDMAPR application allows for the spatial visualization of run qPCR
sample collection locations to reveal species presence/absence patterns.
The application has the ability to connect to a custom developed MySQL
database in order to populate the applications interface with data. The
user interface of the MDMAPR 2.0 is built using R shinydashboard which
is an open-source R package for web application development.

## Installation

You can install the released version of MDMAPR from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("MDMAPR")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(MDMAPR)
#> Warning: replacing previous import 'ggplot2::last_plot' by 'plotly::last_plot'
#> when loading 'MDMAPR'
#> Warning: replacing previous import 'shiny::dataTableOutput' by
#> 'DT::dataTableOutput' when loading 'MDMAPR'
#> Warning: replacing previous import 'shiny::renderDataTable' by
#> 'DT::renderDataTable' when loading 'MDMAPR'
## basic example code
```

## Mapping Dashboard

<kbd><img src="Images/mapping_dashboard.png" width=600></kbd>

The Mapping Dashboard is used to perform geospatial analysis on qPCR run
samples. On this page, an interactive map displays location markers for
qPCR run sample collection locations and allows for filtering of markers
by Cq intensity, date, location, taxon details, machine type, project,
and assay. Hovering above a certain marker will display a pop-up menu
that shows information about the specific marker. As well, the page
contains a data table which shows detailed information about the markers
on the map. The data table will update based on the used filters. A copy
of the data table can be downloaded as a CSV by pressing the ‘Download
Mapped Markers Metadata’ button.

## Data Overview Page

<kbd><img src="Images/data_overview.png" width=600></kbd>

The Data Overview page is used to analyze individual tube/well samples
and facilitates the quality control inspection of data. The page has
four tabs, which include the ‘Presence/Absence Samples’, ‘Amplification
Plot’, ‘Standard Curve Data Overview’, and ‘Standard Curve Plot’. The
‘Presence/Absence Samples’ tab displays a table which indicates if a
target sequence was detected in a tube/well based on its Cq Value. The
‘Amplification Plot’ shows the amplification curve associated with a
specific well sample from the ‘Presence/Absence Samples’ tab. The
‘Standard Curve Data Overview’ tab displays a table with information
related to the standard curve used for the samples in the
‘Presence/Absence Samples’ tab. Lastly, the ‘Standard Curve Plot’ tab
shows the plotted standard curve.

## Data Submission page

<kbd><img src="Images/data_submission.png" width=600></kbd>

The Data Submission page is used to format raw qPCR fluorescence data
and associated metadata into a format that is acceptable to be added to
the MDMAPR 2.0 database for storage. On this page, a raw qPCR
experimental fluorescence file, a raw standard curve fluorescence file,
and the filled in MDMAPR 2.0 metadata file are required. The Data
Submission tool will parse the data into 13 CSV files. A preview of the
tables is viewable on the page. A zipped file of the CSVs can be
downloaded by pressing the ‘Download Data Submission Files’ button.
NOTE: Before you can upload the generated CSV data files into their
respective tables in the MDMAPR 2.0 database, the ID columns (projectID,
geographicRegionID, siteID, stationID, replicateID, extractID, assayID,
runID, pcrChemistryID, resultID, standardCurveID, and SCresultID) must
be manually changed from alphabetical characters to unique numeric IDs.

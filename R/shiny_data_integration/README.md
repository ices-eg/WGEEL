# Shiny data integration


this is the interface to run the shiny data integration. The basic idea is (1) to let wgeel experts do the checks on the files, (2) help them to qualify the data (3) compare data with those existing in the database and check for duplicates.

*last update 2018*

## recipe
You must set the working directory at the root of the git
```r
setwd("C:\\Users\\cedric.briand\\Documents\\GitHub\\WGEEL")
```
to test the app you need to put the files from wgeel 2018 datacall in a folder
launch by running run.R
![alt text][data_check]
 * click button **1**, browse to select file, _from this step the road to the next steps will be explained by rows of text_. 
 * click on the button **2**, the functions running the check on your data will return a list of error, and an excel file with those errors, check them, re-run untill you have solved all errors
 * click on the button **3**, this will load existing data from the database and run comparison checks with your current data. You will get two datasets one excel file with duplicated values and one excel file with new lines to be integrated. 
 	* In the dataset with duplicates you will need to select which value is to be kept from the database or the new dataset: in the column keep new value choose true to replace data using the new datacall data. Duplicated lines (old or new) will be kept in the database with an eel\_qual\_id of 18 if the year of integration is 2018. You will also need to give a qal comment if you select to replace the value currently in the database
 	* In the dataset with new lines, you will still need to give a qal_id statement to all lines
 * click on the button **4** to select the dataset just processed and try integration in the database **5**. If it fails, try to understand with the message why the database refused your data and reprocess it.
  * do the same for new data.
 
 ![alt text][data_check_step0]

 ![alt text][data_check_step1]

[data_check]: https://github.com/ices-eg/wg_WGEEL/blob/master/R/shiny_data_integration/shiny/common/images/data_check.png "Shiny app for data integration"
[data_check_step0]: 
https://user-images.githubusercontent.com/26055877/42418061-9b6dcf0e-8298-11e8-9fd1-89fed97f832a.png
[data_check_step1]: 
https://user-images.githubusercontent.com/26055877/42418064-ae3a6976-8298-11e8-8874-765c0218422e.png
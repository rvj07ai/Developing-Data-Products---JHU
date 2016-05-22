---
title       : Developing Data Products - Shiny App Course Project
subtitle    : 
author      : Ravijeet
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : []            # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
---

## Welcome to the Developing data products project 

Steps to Run the App :
1) Download the files ui.r ,server.r , and packages.r files from the Developing-Data-Products- folder and save it to your local machine, keep all the files in same folder. Please ansure you have R Studio installed on your system
2) Set the working directory as where you have saved the ui.r and server.r file. Run the packages.r file 
3) Then Run the Shiny App by running this command : shiny::runApp('path of directory') or clicking the RUN command in the editor

--- .class #id 

## Introduction to the app :
  This Shiny App does descriptive analysis and basically has three fucntions : 
  - Display the data of the data sets selected by the USER & 
  - Histogram distribution of the dataset selected based on variable selected 
  - Summary output of the entire dataset   
   
--- .class #id 

## Run the App and select the dataset of your choice 
  - Firstly, run the app as explained on 2nd Slide
  - Secondly, select the dataset : either MTCARS or Faithful dataset 
    
  MTCARS dataset was extracted from the 1974 Motor Trend US magazine, and comprises fuel 
  consumption and 10 aspects of automobile design and performance for 32 automobiles
    
  Faithful dataset has  272 observations on 2 variables.
 	1) eruptions	 numeric	 Eruption time in mins
  2) waiting	 numeric	 Waiting time to next eruption (in mins)
  
 
--- .class #id 

## Explore the Data Set under the Data View Panel 
    - Now, you can scroll the dataset with n-number of observation in a view to see the trend 
    - You can change the no. of observation you want to view 



--- .class #id 


##  Witness the descriptive analysis of dataset 
   - After you have seen the data , you can visualize the data by clicking on the Data Distribition 
       tab Item 
   - Here, you can select the variable of the dataset you selected to see the data pattern with 
      help of histogram
   - Also, you are free to select the number of bins by use of slider to get a more clear picture



--- .class #id 


## Summary Table 
  - The App also has a feature to display the summary of the entire data set to help you understand the
    dataset so that you get a first look of variables maximum , minimum , mean and median values which can 
    be helpful or further analysis 




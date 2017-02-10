# Peer Review Assignment Week 4
# Tested on Windows Machine
# This function run_analysis function accepts two parameters:
# A) zipFileUrl - holds the url of the zipped file data set to be analized.
# B) workDir - holds the name of the folder where the zipped file data set will be downloaded and extracted
# 
# run_analysis function performs the following tasks:
# 1. Create a folder called "Peer Review" in the current working directory and set it as the working directory
# 2. Download the zipped data set file into "Peer Review" folder
# 3. 

zipFileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"

run_analysis <- function(zipFileUrl) {
  
  # 1.
  # Create a folder called "Peer Review" in the current working directory only if it does not exist
  workDir <- "Peer Review"
  if(workDir %in% dir() == FALSE) {
    print("hi")
    setwd(as.character(dir.create(workDir)))
  }
  
  # 1.
  # Set the path of the download Directory by obtaining the path of the current working directory and appending
  # the downloaded zipped file to it
  #downLoadDir <- paste(getwd(), workDir, sep = "\\")
  
  # 2. 
  # Download the zipped data set file and name it "uciHardDataSet.zip". However, we need to be careful here
  # We don't want to keep on downloading the file unless "uciHardDataSet.zip" does not exist.
  #zippedFile <- paste(downLoadDir, "uciHardDataSet.zip", sep = "\\")
  #if (!file.exists(zippedFile)) {
  #  download.file(zipFileUrl, destfile = "uciHardDataSet.zip")
  #}
  
  # 3.
  # Unzip the downloaded "uciHardDataSet.zip". Only if it was not extracted previously. We check the existance of
  # the folder "UCI HAR Dataset" which is the folder that will contain the extracted data
  #dataDir <- "UCI HAR Dataset"
  #if(!file.exists(dataDir)) { 
  #  unzip(zipFile, exdir = ".")
  #}
  
  
  

}

run_analysis(zipFileUrl)

x <- FALSE

if (x) {

# Get and extract data

filePath <- function(...) { paste(..., sep = "\\") }


url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
downloadDir <- "C:\\Development\\Coursera\\Data Science\\03_Getting and Cleaning Data\\Week4\\Practice\\Peer Review"

zipFile <- filePath(downloadDir, "dataset.zip")
if(!file.exists(zipFile)) { download.file(url, zipFile) }

dataDir <- "UCI HAR Dataset"
if(!file.exists(dataDir)) { 
  print("hi")
  unzip(zipFile, exdir = ".")
}

print(dataDir)

# Merge the training and the test sets to create one data set.

readData <- function(path) {
  read.table(filePath(dataDir, path))
}

# Read and cache XTrain and XTest data
if(!is.null("XTrain")) { XTrain <<- readData("train/X_train.txt") }
if(!is.null("XTest"))  { XTest  <<- readData("test/X_test.txt") }

}



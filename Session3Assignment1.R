##########################################################################################################################
# Session3Assignment1.R                   
# Shashikant Parashar
# Session:3, Assignment:1
############################################################################################################################
#How to Import SAS XPORT files into R with the foreign package?
############################################################################################################################
#library(SASxport)
#library(foreign)
library(SASxport)
library(foreign)
#set the current working directory to the directory where the data resides in R
pwd <- getwd()
setwd(file.path(path.package("SASxport"),"data"))
lookup.xport("Alfalfa.xpt")
SasData <- read.xport("Alfalfa.xpt")
head(SasData)
#Now that we have read from the SAS XPORT File, lets go back to our main working directory
setwd(pwd)
############################################################################################################################
#How to Import SAS Files into R with the Haven package?
############################################################################################################################
library(haven)
setwd(file.path(path.package("haven"),"examples"))
SasDataHaven <- read_sas('iris.sas7bdat')
head(SasDataHeaven)
#Now get back  to the original working directory
setwd(pwd)
############################################################################################################################
#How to read Weka Attribute-Relation File Format (ARFF) files in R?
############################################################################################################################
library(RWeka)
setwd(file.path(path.package("RWeka"),"arff"))
SasDataArff <- read.arff("contact-lenses.arff")
head(SasDataArff)
#Now get back  to the original working directory
setwd(pwd)
############################################################################################################################
#How to read Weka Attribute-Relation File Format (ARFF) files in R?
############################################################################################################################
library(readr)
readrCsvData <- read_csv('mtcars.csv')
readrTsvData <- read_tsv('fwf-sample-tsv.tsv')
readrCsvDataZ <- read_csv('mtcars.csv.zip')
############################################################################################################################
head(readrCsvData)
############################################################################################################################
head(readrTsvData)
############################################################################################################################
head(readrCsvDataZ)
############################################################################################################################
setwd(pwd)
## End of file.
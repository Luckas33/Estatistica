######## Before start ######## 
# To execute the commands, copy and paste them on the R console.
# Verify your working directory
getwd() 									# print the current working directory
# Move to your working directory
setwd('your directory path')    				# change to your directory

# If you wish, change the precision in R (only for printing)
# This option controls the number of digits to print when printing numeric values. It is a suggestion only. Valid values are 1...22 with default 7.  
options(digits=2) 

######## Example of dataset in R ########
data()
str(precip)
precip[1:4]

######## Data collection example ########
## Define the data sets 
## Marital status
x<-scan()  		
1 4 3 3 2 1 2 2 3 1 1 1 4 2 1 2 3 4 2 2
## 21: 
## Read 20 items
x<-factor(x)		
levels(x)<-c('S','M','V','D')

## Degree
y<-c(4, 2, 1, 2, 4, 3, 3, 2, 4, 2, 3, 1, 3, 
     3, 3, 4, 2, 2, 3, 3)
y<-factor(y)
levels(y)<- c('I','P','H','D')

# Number of children
z<-scan()
0 1 3 4 1 1 0 2 3 0 1 0 1 4 3 0 2 2 4 4
## 21: 
## Read 20 items

# Weight
w<-scan()
72.5 54.28 50.02 88.88 62.3 45.21 57.5 78.4 73.13 58 53.7 91.29 74.7 41.22 65.2 63.58 48.27 52.52 69.5 85.98
## 21: 
## Read 20 items

# Collect the data in the same data frame
data_es1 <- data.frame(X=x, Y=y, Z=z, W=w)

# Save the data
save(file='data_es1.rda',data_es1)

# Clean the workspace and re-load the data
rm(list=ls())			      # Clean the work space
ls()					          # Lists memory contents
## character(0)			    # Workspace is empty
load('data_es1.rda')		# Load data into the workspace
ls()					          # Lists memory contents
## [1] "data_es1"

# Attach the data (objects in the database can be accessed by simply giving their names)
attach(data_es1) 	

######## Frequency distributions ########
# The command to get the frequency distribution is table

table(X) 							      # Absolute frequency
## X	
## S M V D 
## 6 7 4 3 

table(X)/length(X) 					# Relative frequency
## X
## S    M    V    D 
## 0.30 0.35 0.20 0.15 

table(X)/length(X)*100			# Percentage relative frequency
## X
## S  M  V  D 
## 30 35 20 15 

table(Y)								    # Absolute frequency
## Y	
## I P H D 
## 2 6 8 4

table(Y)/length(Y)					# Relative frequency
## Y
##  I   P   H   D 
## 0.1 0.3 0.4 0.2  

table(Y)/length(Y)*100			# Percentage relative frequency
## Y
## I  P  H  D 
## 10 30 40 20 

cumsum(table(Y))						# Absolute cumulative frequency
## I  P  H  D 
## 2  8 16 20 

cumsum(table(Y)/length(Y))			# Relative cumulative frequency
##  I   P   H   D 
# 0.1 0.4 0.8 1.0 

cumsum(table(Y)/length(Y)*100)		# Percentage cumulative frequency
##  I   P   H   D 
## 10  40  80 100 

table(Z)								# Absolute frequency
## Z
## 0 1 2 3 4 
## 5 5 3 3 4 
	
table(Z)/length(Z)					# Relative frequency
## Z
## 0    1    2    3    4 
## 0.25 0.25 0.15 0.15 0.20 

table(cut(W,breaks=c(40,50,58,70,95)))
# (40,50] (50,58] (58,70] (70,95] 
#      3       6       4       7 

hist(W,c(40,50,58,70,95))

## $breaks						# Class boundaries
## [1] 40 50 58 70 95
	
## $counts						# Absolute frequency
## [1] 3 6 4 7

## $density						# Density
## [1] 0.01500000 0.03750000 0.01666667 0.01400000

## $mids						# Central point of the interval
## [1] 45.0 54.0 64.0 82.5

## $xname						# Variable name
## [1] "W"

## $equidist					# Logic variable: TRUE for equidistant intervals
## [1] FALSE

## attr(,"class")		
## [1] "histogram"
 
######## Graphs ######## 
plot(X, col='blue')			# Bar plot
plot(table(X))										              # Line plot with absolute frequency
plot(table(X)/sum(table(X)))							      # Line plot with relative frequency
pie(table(X))										                # Pie plot
pie(table(X), density=10,angle=15+10*(1:4))

hist(W,c(40,50,58,70,95),freq=TRUE)	# Wrong
## Warning message:
## In plot.histogram(r, freq = freq1, col = col, border = border, angle = angle,  :
##  the AREAS in the plot are wrong -- rather use 'freq = FALSE'

hist(W,c(40,50,58,70,95))		# Correct

## Stemplots
IQ <-c(133,139,133,137, 99,138, 92, 89,133, 132, 141, 135,140, 96, 83,132,100,101, 80, 97,135,139,91,141,85,103,77,130,133,144,103,90,83,133,140,88, 81,89)
stem(IQ)

#What are the least and the greatest values in the data set?
min(IQ)
max(IQ)

# What values appear most often?
# Create the mode function 
getmode <- function(v) {
   uniqv <- unique(v)
   uniqv[which.max(tabulate(match(v, uniqv)))]
}
getmode(IQ)
 
# How many numbers are greater than 130?
length(which(IQ>130))
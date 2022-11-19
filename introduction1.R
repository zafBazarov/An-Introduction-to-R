# This is my first R script


setwd("D:/jlu box/2_JLU Giessen/Modules/2022_WS/Applied statistics/R_tutorial") # This sets my WD
getwd() # Here I can look up my WD

# R is a pocket calculator
############################
6+7           # plus
8-4
2*3
10/5
2^3
sqrt(25)

# Varibles
##################

blyton <- 5 # blyton is a varibale
blyton

# These functions/variables are mis-spelled and
# cannot be found in the global environament:
Sqrt(25)
Blyton

11 - blyton

# Data types
#############

class(blyton) # class() checks the data type

x <- "Joybrato Mukherjee"
class(x)

# Data structures
##########################

# .1 Vestors
##########################

chain <- c(1,2,3,4,5)
chain

# calculations with vectors:

chain-1
chain-chain
chain^2
sqrt(chain)

# Alphanumerical vectors:

five.friends <- c("Geroge", "Julian", "Richard", "Anne", "Tim")
five.friends

# Accessing elements of vector:

five.friends[3]

# 0.2 Matrices
###############

abc <- matrix(c("a", "b", "c", "d",
                "e", "f", "g", "h"),  # data 
              nrow=2,                 # number of rows
              byrow = T)              # data are ordered row-wise
abc

# For comparison

abc2 <- matrix(c("a", "b", "c", "d",
                "e", "f", "g", "h"),   
              nrow=4,                 
              byrow = T)              
abc2

# Accessing elements of a matrix:

abc[2,3]           # element in secont row, third column
abc[2,]            # whole secont row
abc[,3]            # whole third column

# Vectors and matrices contain either number or character elements:
abc.123 <- matrix(c("a", "b", "c",
                     1,   2,   3),
                  nrow=2,
                  byrow=T)
abc.123

# .3 Data frames

fieldtrial <- data.frame(
  plot         = c(1,  2,  3,  4,  5,  6,  7,  8,  9,  10,  11,  12),
  variety      = c(1,  1,  1,  1,  1,  1,  2,  2,  2,   2,   2,   2),
  fertilizer   = c("N","N","N","NK","NK","NK","NK","NK","NK","NK","NK","NK"),
  rep          = c(1,  2,  3,  1,  2,  3,  1,  2,  3,   1,   2,   3),
  yield        = c(80, 90, 95, 95, 100, 93, 88, 102, 92, 100, 110, 103))

fieldtrial

str(fieldtrial)

fieldtrial$yield

fieldtrial[, "yield"]

fieldtrial[,5]

fieldtrial[3,]

# Saving and loading data files
################################

write.table(fieldtrial, "fieldtrial.txt")    # write into txt file

ft<- read.table("fieldtrial.txt")           # read from txt file
ft

read.table("fieldtrial.txt")

# Reading in data from Excel or openOffice files
#################################################

# Read from csv file:
ft2 <- read.table(file="fieldtrial.csv",  # name of input file
                  dec = ",",              # decimal separator
                  sep = ";",              # separator between values
                  header = T)             # data have headers
ft2

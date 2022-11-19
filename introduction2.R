getwd()
blyton<-5

desc<-99

blyton+1

blyton+desc

x<- "string"
class(blyton)

chain1<- c(1,2,3,4)
chain1

chain1-1
chain1-10

chain2<- c("A", "B", "C", "D")
class(c)

chain2[2]

abc <- matrix(c("a", "b", "c", "d",
                "e", "f", "g", "h"), # data
              nrow = 4, # number of rows
              byrow = TRUE) # data are ordered row-wise
abc

# New order with abc1 which I changed byrow to FALSE
abc1 <- matrix(c("a", "b", "c", "d",
                "e", "f", "g", "h"), # data
              nrow = 3, # number of rows
              byrow = FALSE) # data are ordered row-wise
abc1

abc1[2, 3]
# This command is for the raw 
abc1[2,]

# this command is for collumn
abc1[,3]

abc <- matrix(c("a", "b", "c", "d",
                "e", "f", "g", "h"), # data
              nrow = 4, # number of rows
              byrow = TRUE) # data are ordered row-wise
abc

# the number command

abc2 <- matrix(c(1, 2, 3, 4,
                5, 6, 7, 8), # data
              nrow = 4, # number of rows
              byrow = TRUE) # data are ordered row-wise
abc2

fieldtrial <- data.frame(
  plot = c( 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12) ,
  variety = c( 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2) ,
  fertilizer = c("N","N","N","NK","NK","NK","N", "N","N","NK", "NK","NK"),
  rep = c( 1, 2, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3) ,
  yield = c(80, 90, 95, 95, 100, 93, 88, 102, 92, 100, 110, 103) )

fieldtrial

fieldtrial[,2]
fieldtrial[2,]

str(fieldtrial)

# Using $ sign

fieldtrial$yield
fieldtrial$plot
fieldtrial [, "yield"]

# Save command 

write.table(fieldtrial, "fieldtrial.txt") # variable name, "filename"
write.table(fieldtrial, "fieldtrial.xlsx") # variable name, "filename"

install.packages("xlsx")

ft <- read.table("fieldtrial.txt")
ft

?read.table

ft2 <- read.table(file = "fieldtrial2.csv", # name of input file
                  dec = ",", # decimal separator
                  sep = ";", # separator between values
                  header = T) # data have headers

ft2

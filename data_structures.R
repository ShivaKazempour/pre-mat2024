## This script covers the data structures in R.
## 08-16-2024
##A data structure is a particular way of organizing data in a computer so that 
##it can be used effectively. 
##The idea is to reduce the space and time complexities of different tasks. 
##Data structures in R programming are tools for holding multiple values. 
## R’s base data structures are often organized by their dimensionality (1D, 2D, or nD).

## famous lines
x=2
y=3
z <- 5.2
charc <- "hi world!"
x==y
## assign to a variable. Never use function names as variable names


## simple operations
x+10
y-2
x+y+21
x*3 ##multiply
x/2 ##division

## introduce functions for operations
sum(3,2) ##3+2
sqrt(4) ##square root
abs(-3) ##absolute value

## Vectors (1D)
x = c(3, 5, 7) ## numeric vector. c() is a bulit-in R function.
print(x) ## print() is built-in R function.
class(x)
y = c("Hi", "bye", "pre-mat", "pen") ## character vector.
print(y)
class(y)
##named vector:
names(x) <- c("value1", "value2", "value3")
print(x)
print(length(x))

##slicing:
print(x[1]) ##return the first value in x
print(x["value1"])
print(x[c("value1", "value2")])
y3=y[3]
print(y3)
print(x[c(1,3)])
## Q:please make a numeric vector of length 6, give each value a name (named vector). 
## Check the class of data.
## print the length of your data. Exctarct the 3rd, 4th, 6th items
vector1 = c(1,2,3,4,5,6)
names(vector1) = c("one","two","three","four","five","six")
class(vector1)
print(length(vector1))



## dataframes (2D). A data-frame must have column names and every row should have a unique name.
##Each column must have the identical number of items.
##Different columns may have different data types.
classroom <- c("classA", "classB", "classC")
x <- c(4, 5, 6)
df=data.frame(Classroom=classroom, numStudents=x)
print(df)
print(dim(df))
print(df[1,1]) ##first row and first column
print(df[3, 2]) ##third row and second column
## IMPORTANT: google engine is your BFF when writing code
## Q: Please make 3*3 dataframe, two columns numeric and one column character. 
## Show the class of it.
## What is the rownames of your dataframe? 
## Change them to "row1", "row2", "row3" (rownames should be unique!)
## HINT: for vectors we used names()

w=c(2.5,3.6,4.8)
l=c(4.7,5.6,7.8)
PlantID=c("hyacinth","hydrangea","bluebell")
df1=data.frame(Plant=PlantID,Width=w,Length=l)
print(df1)
class(df1)
row.names(df1) <- c("row1","row2","row3")
print(df1)

## Q: We have 4 cell lines and measured genes BRCA1, BRCA2, and P10.
## Create a dataframe for these gene expressions.
## Set suitable rownames and columnames
## Calculate the mean of each sample across all genes
## Calculate variance of each genes
cell1 <- c(22, 33, 44)
cell2 <- c(56, 12, 89)
cell3 <- c(190, 204, 110)
cell4 <- c(120, 78, 210)
geneExp <- data.frame(cell1, cell2, cell3, cell4)
rownames(geneExp) <- c("BRCA1", "BRCA2", "P10")
colnames(geneExp) <- c("Astrocyte1", "Astrocyte2", "Excitatory1", "Excitator2")
print(geneExp)
install.packages("matrixStats")
library(matrixStats) ## only vectors or matrix
expMat <- as.matrix(geneExp)
print(class(expMat))
print(rowVars(expMat))
print(colVars(expMat))

## matrices (2D). a rectangular arrangement of numbers in rows and columns.
nums <- c(1, 2, 3, 4, 5, 6)
nums1 <- 1:15
nums2 <- nums1[10:12]
mat <- matrix( nums2, nrow=3, ncol=1)
myMatrix = matrix(nums, nrow = 3, ncol = 2, byrow = TRUE) ##always check the function help
print(myMatrix)
##Q: pick colnames and rownames for myMatrix.




##lists(1D). 
##A list can be a list of vectors, list of matrices, a list of characters and a list of functions and so on.
print(df)
myList <- list(mat=myMatrix, df=df, students=x)
print(myList)
print(myList[[1]])
## Q: select the second row, first column of second element of myList.


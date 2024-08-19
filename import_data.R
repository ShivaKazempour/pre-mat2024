library(pheatmap)
##panc1 <- read.csv("/Users/kazempour/proj/pre-mat/data/2024/GSE85241_cellsystems_dataset_4donors_updated.csv.gz")
pancData <-
    read.delim("/Users/kazempour/proj/pre-mat/data/2024/GSE85241_cellsystems_dataset_4donors_updated.csv.gz")
##logb (x) =y, then b^y=x. log10(z)=2
pancLog <- log10(pancData+1)

## Find the variance of all genes
matPanc <- as.matrix(pancLog)
geneVars <- rowVars(matPanc)
summary(geneVars)
varLogical <- geneVars > 0.5 ## == !=
highVar=which(varLogical) ##return the TRUE index
highVarMat <- matPanc[highVar, ] ##pancLog[1:10, ]
print(dim(highVarMat))
library(pheatmap)
pheatmap(highVarMat, scale="row") ##"row": The data is scaled along the rows, 
##so each row has a mean of 0 and a standard deviation of 1.

## Data transformation to normal distribution
## Find 'ABLIM1__chr10' from pancData and saved the expression in an object
## Test if the expression follows a normal distribution using two methods.
## 


p1num <- as.numeric(log10((p1+1)))
hist(p1num, freq=FALSE)
normCurve <- seq(min(p1num), max(p1num), length = 100)
fun <- dnorm(normCurve, mean = mean(p1num), sd = sd(p1num))
lines(normCurve, fun, col = 2, lwd = 2)

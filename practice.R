library(matrixStats)
library(pheatmap)
stemData <- read.table("/Users/kazempour/proj/pre-mat/data/2024/GSE273393_countmatrix_scRNAseq_rawcounts.txt.gz")
print(dim(stemData))
stemDataTrans <- as.matrix(log10(stemData+1))
geneVars <- rowVars(stemDataTrans)
print(length(geneVars))
ind <- which(geneVars>1)
highVar <- geneVars[ind]
subStem <- stemDataTrans[highVar, ]
png("/Users/kazempour/proj/pre-mat/result/stem_heatmap.png", width=4*480, 
    height=4*480, res=150)
p1 <- pheatmap(subStem, scale = "row", show_colnames = FALSE)
p1
dev.off()

gene1 <- stemDataTrans[10,]
gene2 <- stemDataTrans[1000,]
t.test(gene1, gene2)

library(pheatmap)


Exp<-read.delim("clipboard",header=T,row.names=1)

pheatmap(Exp,scale="column",cluster_rows = T, cellwidth = 12, cellheight = 12,treeheight_row = 30, treeheight_col = 30,legend = TRUE,cluster_cols = TRUE,color = colorRampPalette(colors = c("blue","white","red"))(100)) 

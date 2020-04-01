library(mixOmics)
library(MASS)
library(lattice)
library(ggplot2)
data<-read.delim("clipboard",header=T)
head(data)
datat<-data[,-1]
row.names(datat)<-data[,1]
datatm<-as.matrix(datat)
XXt<-t(datatm)
YY<-c(rep(c("N","HF-OR","HF-OP"),c(5,5,5)))
plsda.datatm <-plsda(XXt, YY, ncomp = 3)
plotIndiv(plsda.datatm, ind.names = F,legend=TRUE,ellipse =TRUE,point.lwd = 1,style = "ggplot2",col=c("red","green","blue"),pch=16,title = "PLS-DA",legend.title = "Group")

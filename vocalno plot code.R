
head(temp)
library("ggplot2")

temp$threshold  = "non"

temp$threshold[temp$pvalue < 0.05 & temp$log2FoldChange>1 ] = "up"

temp$threshold[temp$pvalue<0.05 & temp$log2FoldChange<  -1 ] = "down"

##install.packages("ggthemes")
library(ggthemes)
p<-ggplot(temp,aes(x=temp$log2FoldChange,y=-log10(temp$pvalue),colour=threshold))+xlab("log2 Fold Change")+ylab("-log10P-Value")+
  
  geom_point(size=4,alpha=0.6)+
  
  scale_color_manual(values =c("#0072B5","grey","#BC3C28")) +
  
  geom_hline(aes(yintercept=-log10(0.05)),colour="grey",size=1.2 ,linetype=2) +  #????ˮƽ??????
  
  geom_vline(aes(xintercept=1), colour="grey",size=1.2 ,linetype=2)+  #???Ӵ?ֱ??????
  geom_vline(aes(xintercept=-1), colour="grey",size=1.2 ,linetype=2)+  #???Ӵ?ֱ??????
  
  
  theme_few()+theme(legend.title = element_blank())  #ȥ?????񱳾???ͼע??ǩ

p




library(ggbiplot)
data1<-read.csv("UDCA BA data.csv",header = F)
df<-data1
XXt<-t(df)
df.group<-c(rep(c("N","H","HU"),c(5,5,5)))
df.pca <- prcomp(Xxt, scale. = TRUE)
ggbiplot(df.pca, obs.scale = 1, var.scale = 1,
         groups = df.group, labels.size = 8, alpha = 1, ellipse = TRUE, circle = TRUE,var.axes = F)+
  theme(legend.direction = 'vertical', legend.position = 'right')

ggbiplot(df.pca, obs.scale = 1, var.scale = 1,
         groups = df.group, labels.size = 8, alpha = 1, ellipse = TRUE, circle = TRUE,var.axes = F)
+theme_bw() 
##或者选择下面这个背景
theme(aspect.ratio=1,legend.direction = 'horizontal')
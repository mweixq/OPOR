getwd()
library(ggpubr)

mydata<-read.csv("HO vs UHO-1.csv")

mydata$group<-factor(mydata$group,levels=c("HO","UHO"))#ÉèÖÃÖù×´ÌõµÄË³Ðò

plot1<-ggboxplot(mydata, x="group", y="LCAsp", color = "group",palette = c("blue","red"),add = "jitter",width = 0.7)+
  theme(legend.position = "none")
plot1
plot2<-ggboxplot(mydata, x="group", y="UDCAsp*100", color = "group",palette = c("blue","red"),add = "jitter",width = 0.7)+
  theme(legend.position = "none")
plot2
plot3<-ggboxplot(mydata, x="group", y="CDCAsp*100", color = "group",palette = c("blue","red"),add = "jitter",width = 0.7)+
  theme(legend.position = "none")
plot4<-ggboxplot(mydata, x="group", y="Casp*100", color = "group",palette = c("blue","red"),add = "jitter",width = 0.7)+
  theme(legend.position = "none")
plot5<-ggboxplot(mydata, x="group", y="DCAsp*100", color = "group",palette = c("blue","red"),add = "jitter",width = 0.7)+
  theme(legend.position = "none")
plot6<-ggboxplot(mydata, x="group", y="TBA", color = "group",palette = c("blue","red"),add = "jitter",width = 0.7)+
  theme(legend.position = "none")
plot7<-ggboxplot(mydata, x="group", y="non*100", color = "group",palette = c("blue","red"),add = "jitter",width = 0.7)+
  theme(legend.position = "none")

library(gridExtra)##ÅÅÁÐggplot2Í¼Æ¬
a<-grid.arrange(plot6,plot7,plot4,plot5,plot3,plot2,ncol = 3)
a
ggsave("wei110.pdf",plot=a,width=7,height=4)

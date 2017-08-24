#Classification and Clustering ------------- Knn
kd=read.csv("aba.csv")
kd
kd<-kd[,-1]
kd
summary(kd)
data_norm<-function(x){((x-min(x)/max(x)-min(x)))}
kd_norm<-as.data.frame(lapply(kd[,-3],data_norm))
kd_norm
kd_train<-kd_norm[1:4,]
kd_train
kd_test<-kd_norm[4,]
kd_test
library(class)
kd_pred<-knn(kd_train,kd_test,kd[1:4,3],k=3.5)
kd_pred
table(kd_pred,kd[4,3])
wdbc<-read.table(file.choose(),sep=',')
View(wdbc)
table(wdbc[,1])
wdbc=wdbc[,-1]
View(wdbc)
summary(wdbc)
data_norm1<-function(x){((x-min(x)/max(x)-min(x)))}
kd_norm1<-as.data.frame(lapply(kd[,-1],data_norm))
kd_norm1
kd_train1<-kd_norm1[1:568,]
kd_train1
kd_test1<-kd_norm1[568,]
kd_test1
kd_pred1<-knn(kd_train1,kd_test1,kd[1:6,5],k=1)







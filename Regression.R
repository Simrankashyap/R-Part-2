x=c(1,2,3,4,5,6,7,8)
y=c(3,6,9,12,15,18,21,24)
h=data.frame(x,y)
h
plot(h)
out=lm(y~x,data=h)
out
summary(out)
abline(out)
#plot(out)
test=data.frame(x=c(14,4,10))
test
r=predict(out,test)
r
p=c(14,4,10)
k=data.frame(p,r)
k
plot(x,y,ylim=c(0,50),xlim=c(0,30))
points(r~p,data=k,pch='+')
abline(out)
predict(out,data.frame(x=11),interval='confidence')
predict(out,data.frame(x=11))
cor(x,y)
resid(out)
plot(resid(out))
abline(h=0)
plot(out)
#######
x=c(95,65,45,75)
y=c(25,35,45,65)
h=data.frame(x,y)
h
#stackloss

stackloss.lm=lm(stack.loss~Air.Flow + )


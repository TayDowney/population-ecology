a<-2+3
a
a = 2+3
a


b<-a+a
b
X<- c(1, 2, 3, 4)
x
y<- 1:4
z<- seq(from = 1, to =4, by =1)
x==y
?all.equal

all.equal (x,y)

w<-round(3-2.9, 1)
w
w==0.1
bogus.mean<- function(x, cheat){
  sum.of.x<-sum(x)
  n<- length(x)
  true.mean <- sum.of.x/n
  (1+cheat)*true.mean
}

bogus.mean(x=X, cheat= 0.1)

install.packages('deSolve')
library(deSolve)
?ode

exp.growth<-function(t, y, p){
  N <- y[1]
  with(as.list(p), {
    dN.dt <- r * N
    return(list(dN.dt))
  })
}

p<- c('r'= 0.1)
y0<-c('N' = 1)
t<-1:25

sim<- ode(y=y0, times=t, func=exp.growth, parms=p, method= 'lsoda')

sim<-as.data.frame(sim)
plot(N ~ time, data=sim, type = 'l', lwd=4, col='purple')

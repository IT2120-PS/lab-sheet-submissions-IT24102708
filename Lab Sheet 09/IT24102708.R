getwd()
setwd("C:\\Users\\Bisandi\\Desktop\\3rd Semester\\PS\\Practical\\Lab 09")
getwd()


## 01) 

x<-c(3, 7, 11, 0, 7, 0, 4, 5, 6, 2)
t.test(x, mu = 3)


## 02) 

## i) 

Weight <- c(17.6, 20.6, 22.2, 15.3, 20.9, 21.0, 18.9, 18.9, 18.9, 18.2)
t.test(Weight , mu=25 , alternative= "less")

## ii)

res <- t.test(Weight , mu=25, alternative= "less")
res$statistic 
res$p.value
res$conf.int

## 03) 

## i)

y <- rnorm(30, mean = 9.8, sd = 0.05)

## ii) 

t.test(y, mu=10, alternative= "greater")


## Exercise

## 01)

## i)

baking_time <- rnorm(25, mean = 45, sd = 2)

## ii)

t.test(baking_time, mu = 46, alternative= "less")



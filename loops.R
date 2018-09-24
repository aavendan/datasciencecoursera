x <- list(a= 1:5, b = rnorm(10), c = rnorm(10,5))
#print(x)
#print(lapply(x, mean))
#print(sapply(x, mean))

x <- 1:4
#print(lapply(x, runif, min = x, max = x+1))

x <- list(matrix(1:10, 2,5), matrix(1:9, 3,3))
#print(x)
#print(lapply(x, function(m) m[,1]))
#print(sapply(x, function(m) m[,1]))

x <- matrix(rnorm(200),20,10)
#print(x)
print(apply(x, 2, mean))
print(apply(x, 1, mean))
results <- apply(x, 1, quantile, probs = c(0.25, 0.5, 0.75))
print(results)


print(mapply(rep, 1:5, 1:5))


x <- c(rnorm(10),runif(10),rnorm(10,1))
f <- gl(3,10) #rep(1,30)
#print(f)
print(tapply(x,f,mean))
print(tapply(x,f,range))

library(datasets)
print(head(airquality))

s <- split(airquality, airquality$Month)
print(lapply(s, function(x) colMeans(x[, c('Ozone','Solar.R')])))
print(sapply(s, function(x) colMeans(x[, c('Ozone','Solar.R')])))
print(sapply(s, function(x) colMeans(x[, c('Ozone','Solar.R')], na.rm = TRUE)))


x <- rnorm(10)
f1 <- gl(2,5)
f2 <- gl(5,2)
print(f1)
print(f2)
print(interaction(f1,f2))

s<-split(x,list(f1,f2), drop=TRUE3)
print(s)
print(str(s))
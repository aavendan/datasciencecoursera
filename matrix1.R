matriz <- matrix(nrow=2, ncol=3)
print(matriz)
print(dim(matriz))
print(attributes(matriz))

m <- 1:20
print(m)

dim(m)<- c(4,5)
print(m[2,4])


x <- 1:3
y <- 10:12
m <- cbind(x,y)
print(m)
m <- rbind(x,y)
print(m)
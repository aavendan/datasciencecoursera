#vectors
x <- c("a","b","c","d","e")
print(x[1])
print(x[1:4])
print(x[x>"a"])

u <- x > "b"
print(u)
print(x[u])

x <- list(foo=1:4, bar=0.6)
print(x)
print(x[1])
print(x[[1]])
print(x$foo)

x <- list(foo=1:4, bar=0.6, baz="hello")
print(x[c(1,3)])


x <- matrix(1:6,2,3)
print(x)
print(x[1,2])
print(x[2,])
print(x[,2])
print(x[,2, drop=FALSE]+x[,1,drop=FALSE])


x <- list(assaf = 1:5)
print(x$a)

x <- c(1,2,NA, 3, 4, NA)
bad <- is.na(x)
print(bad)
print(x[!bad])

complete <- complete.cases(x)
print(x[complete])
x <- 1:3
print(x)

names(x) <- c("one", "two", "three")

print(x)
print(x["two"])

lista <- list(a = 2, b = 3)
print(lista)

m <- matrix(1:4, nrow = 2, ncol= 2)
dimnames(m) <- list(c("a","b"), c("c","d"))
print(m)
print(m["b","d"])
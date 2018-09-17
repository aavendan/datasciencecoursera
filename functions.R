add2 <- function(x,y) {
  x+y
}

above10 <- function(x) {
  use <- x > 10
  x[use]
}

above <- function(x,y=10) {
  use <- x > y
  x[use]
}

columnMean <- function(matrix, removeNA = TRUE) {
  nc <- ncol(matrix)
  means <- numeric(nc)
  for(i  in 1:nc) {
    means[i] <- mean(matrix[,i], na.rm = removeNA)
  }
  means
}

make.power <- function(n) {
  pow <- function(x) {
    x^n
  }
  pow
}


y <- 10

f <- function(x) {
  y <- 2
  y^2 + g(x)
}

g <- function(x) {
  x*y
}
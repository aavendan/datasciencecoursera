#Random model

set.seed(20)
x <- rnorm(100)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
print(summary(y))
plot(x,y)

set.seed(20)
x <- rbinom(100,1,0.5)
e <- rnorm(100,0,2)
y <- 0.5 + 2 * x + e
print(summary(y))
plot(x,y)


set.seed(1)
x <- rnorm(100,1,0.5)
log.mu <- 0.5 + 0.3 * x
y <- rpois(100, exp(log.mu))
print(summary(y))
plot(x,y)

#Random sampling

set.seed(1)
print(sample(1:10, 4))
print(sample(1:10, 7))
print(sample(1:10, 7, replace = TRUE))
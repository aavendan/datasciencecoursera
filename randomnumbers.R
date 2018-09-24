

data <- rnorm(10)
print(data)

data <- rnorm(10,20,2)
print(data)

#pseudo-random numbers
set.seed(1)
print(rnorm(5))
print(rnorm(5))
set.seed(1)
print(rnorm(5))


print(rpois(10,1))
print(ppois(10,2))
print(rpois(10,1))
print(ppois(10,0.1))
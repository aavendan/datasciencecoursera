data <- rnorm(100,2,4)
print(data)
print(summary(data))
print(str(data))

f <- gl(40, 10)
print(str(f))
print(f)

library(datasets)
print(str(airquality))
print(summary(airquality))

m <- matrix(rnorm(100), 10, 10)
print(str(m))


s <- split(airquality, airquality$Month)
print(s)
print(str(s))
print(summary(s))
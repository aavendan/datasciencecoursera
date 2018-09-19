x <- as.Date("1986-03-21")
print(x)
print(class(x ))
#print(unclass(x))

x <- as.POSIXlt(Sys.time())
print(class(x))
print(names(unclass(x)))
print(x$hour)

y <- strptime("March 21, 1986", "%B %d, %Y")
print(class(y))

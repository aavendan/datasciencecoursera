x <- c(1,3, 5)
y <- c(3, 2, 10)
z<-cbind(x, y)
print(z)

x <- list(2, "a", "b", TRUE)
print(class(x[1]))

x <- 1:4
y <- 2
print(x+y)

x <- c(3, 5, 1, 10, 12, 6) 

x[x %in% 1:5] <- 0
print(x)

data <- read.csv("hw1_data.csv",header = TRUE)
print(data[1:2,])
print(nrow(data))
print(data[151:153,])
print(data[47,])

ozone <- data["Ozone"]

print( mean(ozone[!is.na(ozone)])  )

data <- data[complete.cases(data),]
filter <- data[data["Ozone"]>31 & data["Temp"]>90,]
print(mean(filter[["Solar.R"]]))


bymonth <- data[data["Month"] == 6,]
print( mean(bymonth[["Temp"]]) )

bymonth <- data[data["Month"] == 5,]
print( max(bymonth[["Ozone"]]) )
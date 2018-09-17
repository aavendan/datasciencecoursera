for (i in 1:10) {
  print(i)
}

x <- c(1,2,3,4,5,6,7)

for(element in x) {
  print(element)
}

for(i in seq_along(x)) {
  print(i)
}

count <- 0
while(count < 13) {
  print(count)
  count <- count + 1
}


x<-0

repeat {
  if (x == 5) {
    break
  }
  print(x)
  x <- x + 1
}


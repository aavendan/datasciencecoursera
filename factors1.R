x <- factor(c('yes','no','yes','yes','yes',NaN), levels=c('no','yes'))
print(x)
print(table(x))
print(unclass(x))
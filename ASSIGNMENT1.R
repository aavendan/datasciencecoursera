pollutantmean <- function(directory, pollutant, id=1:332) {
  total <- 0
  cont <- 0
  
  for(i in id) {
    
    number <- toString(i)
    zeros <- paste(rep("0",(3-nchar(number))), collapse = "")
    name <- paste(zeros, number,".csv",sep = "")
    
    file_name <- paste(directory,name,sep = "/")
    
    data <- read.csv(file_name, header = TRUE)
    column <- data[,pollutant]
    condition <- complete.cases(column)
    
    total <- total + sum(column[condition])
    cont <- cont + length(column[condition])
    
    #print(file_name)
    #print(total)
    #print(cont)
    
  }
  
  total / cont
}

res <- pollutantmean("specdata", "sulfate", 1:10)
print(res)
res <- pollutantmean("specdata", "nitrate", 70:72)
print(res)
res <- pollutantmean("specdata", "nitrate", 23)
print(res)
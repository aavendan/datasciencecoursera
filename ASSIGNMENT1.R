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
  
  print(total / cont)
}

pollutantmean("specdata", "sulfate", 1:10)
pollutantmean("specdata", "nitrate", 70:72)
pollutantmean("specdata", "nitrate", 23)

complete <- function(directory, id = 1:332) {
  nobs <- c()
  
  for(i in id) {
    
    number <- toString(i)
    zeros <- paste(rep("0",(3-nchar(number))), collapse = "")
    name <- paste(zeros, number,".csv",sep = "")
    
    file_name <- paste(directory,name,sep = "/")
    
    data <- read.csv(file_name, header = TRUE)
    nobs <- c(nobs, nrow(data[complete.cases(data), ]))
  }
  
  df <- data.frame(id, nobs)   
  print(df)
  
  
}

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)
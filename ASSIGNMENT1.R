pollutantmean <- function(directory, pollutant, id=1:332) {
  result <- 0
  files <- list.files(directory)
  files = c("001.csv")
  for(file in files) {
    data = read.csv(paste(directory,file,sep = "/"), header = TRUE)
    column = data[,pollutant]
    condition = complete.cases(column)
    result = result + sum(column[condition])
  }
  avg = result / length(id)
  print(avg)
}

pollutantmean("specdata", "sulfate", 1:10)
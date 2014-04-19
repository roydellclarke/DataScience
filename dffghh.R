pollutantmean <- function(specdata, pollutant, id = 1:332) {   
  
  s<-paste(getwd(), "/", specdata, "/",  sep ="")
  
  #files <- list.files(specdata, full = TRUE)
  alldata <- do.call("rbind", lapply(files, read.csv))
  
  mean(alldata[alldata$ID %in% id, pollutant],na.rm=TRUE)
}
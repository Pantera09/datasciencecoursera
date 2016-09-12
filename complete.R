complete <- function(specdata, id = 1:332){
 nobs = numeric()
  files_full <- list.files("specdata", full.names = TRUE)
   for (i in id){
    specdata <- read.csv(files_full[i]) 
     nobs = c(nobs, sum(complete.cases(specdata)))
}
  return(data.frame(id, nobs))
}

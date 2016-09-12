complete <- function(specdata, id = 1:332){
 nobs = numeric()
  files_full <- list.files("specdata", full.names = TRUE)
   for (i in id){
    specdata <- read.csv(files_full[i]) 
     nobs = c(nobs, sum(complete.cases(specdata)))
  }
return(data.frame(id, nobs))
}

corr <- function(specdata, threshold = 0){
 corval <- numeric()
  dat <- complete(specdata)
   ids = dat[dat["nobs"] > threshold, ]$id
    for(i in ids){
newdat <- read.csv(paste("specdata", "/", format = c(i, width = 3, flag = "0"),
 ".csv", sep = ""))
  dat2 <- newdat[complete.cases(newdat), ]
   corval <- c(corval, cor(dat2$sulfate, dat2$nitrate))
    }
   return(corval)
}

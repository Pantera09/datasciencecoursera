pollutantmean <- function(specdata, sulfate, id = 1:332){
  specdata <- list.files("specdata", full.names = TRUE)
      dat <- data.frame()
        for (i in id) {
          dat <- rbind(dat, read.csv(specdata[i]))
}
      means <- mean(dat$sulfate, na.rm = TRUE)
      #means <- mean(dat$nitrate, na.rm = TRUE)
      print(means)
  }

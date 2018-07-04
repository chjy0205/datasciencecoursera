pollutantmean <- function(directory, pollutant, id = 1:332){
        filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        values <- numeric()
        
        for(i in id) {
                data <- read.csv(filelist[i])
                values <- c(values, data[[pollutant]])
        }
        mean(values, na.rm = TRUE)
}

pollutantmean("C:/Users/chenj/Documents/GitHub/specdata/rprog_2Fdata%2Fspecdata/specdata/", "sulfate", id = 1:25)

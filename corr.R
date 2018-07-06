corr <- function(directory, threshold = 0){
        
        filelist <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
        
        result <- vector(mode = "numeric", length = 0)
       
        for(i in seq(filelist)){
                monitor <- read.csv(filelist[i], header = TRUE)
                monitor <- monitor[complete.cases(monitor), ]
                
                nom <- nrow(monitor)
                
                if(nom > threshold){
                        
                        correlation <- cor(monitor$sulfate, monitor$nitrate)
                        result <- c(result, correlation)
                }
        }
        
        return(result)
        
}
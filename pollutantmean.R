pollutantmean <- function(directory, pollutant, id = 1:332) {
	
## move working directory to one up from the 'specdata' directory

	setwd("c:/Users/wbuck/Desktop/R_stuff/Coursera_R")

## get a list of files in the specdata directory

	setwd(directory)
	b <- dir()
  myfiles  <- b[id]

## load the appropriate csv files
	xlist <- lapply(myfiles, read.csv)
 	x  <- do.call("rbind", xlist)

##	x <- read.csv(myfiles)
##	classes <- c("factor","num","num","int")
##	x <- read.csv(myfiles, colClasses= classes)

## find nulls
	y <- !is.na(x[pollutant])

## subset the data to focus on the required pollutant
	z <- x[pollutant]

## then get the mean
	mean(z[y])

}


pollutantmean <- function(directory, pollutant,id = 1:332) {
	
	setwd("c:/Users/wbuck/Desktop/R_stuff/Coursera_R")

#get a list of files in the specdata directory

	setwd(directory)
	b <- dir()

#load the appropriate csv file
	classes <- c("factor","num","num","int")
	x <- read.csv(b[id])
#	x <- read.csv(b[id], colclasses= classes)

#filter out nulls
	y <- !is.na(x[pollutant])

#subset the data to focus on the required pollutant
	z <- x[pollutant]

#then get the mean
	mean(z[y])

}

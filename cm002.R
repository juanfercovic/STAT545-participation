5 + 4
number <- 3
3 + number
3 + cheese

#Functions
times <- c(60, 40, 33, 15, 20, 55, 35)
times/60


# Basic Functions and operations 
mean(times)
range(times)
sqrt(times)

avg <- mean(times) # I can save the value
times_root2 <- sqrt(times)
spread <- range(times)

# compare and operators
times < 30
times == 15
times != 33
times > 20 & times < 50
times > 20 | times > 50
which (times < 30) 
times>30&times<60

#different ways to do the same thing
times<30|times>50
which(times<30)
sum(times<30)
a<-all(times<30)


# Subsetting

times [3]
times [-3]
times [c(2,4)]
times [2:5]

times [times < 30] # creates a vector of length 7 containing TRUEs and FALSEs in inner operation, then extracts the TRUE values with the outer operation
times [times > 50] <- 50 
times


#Subsetting
times[3]
times[-3]         #everything except third entry
times[c(2, 4)]    #second and fourth entries
times[c(4, 2)]    #fourth and second entries in this order
times[2:5]        #entries one through to five
times [times < 30] # creates a vector of length 7 containing TRUEs and FALSEs in inner operation, then extracts the TRUE values with the outer operation
times[times>50]<-50
times


#NA
times[8]<-NA
times
mean(times, na.rm=TRUE)
?mean



#Data frames
mtcars
head(mtcars)
tail(mtcars)
str(mtcars)
nrow(mtcars)
summary(mtcars)
row.names(mtcars)
names(mtcars)
mean(mpg) #string no mean 
mean(mtcars, mpg)


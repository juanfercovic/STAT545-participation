#first exercise of R - R basics
n <- 40
a <- 2
b <- -5
sig_sq <- 0.5
x <- runif(40)
y <- a + b * x + rnorm(40, sd = sqrt(sig_sq))
(avg_x <- mean(x))
a <- 2
write(avg_x, "avg_x.txt")
plot(x, y)
abline(a, b, col = "red")
setwd("~/Documents/Rclass/class1")
dev.print(pdf, "toy_line_plot.pdf")
rm(list = ls())

#swirl
# install.packages("swirl")
#swirl()

#2.5.1
number <- 5*2
times <- c(1, 100)
mean(times)
range(times)
mean(times)

#2.5.9 R packages
#install.packages("tibble")
#install.packages("gapminder")

library("tibble")
library("gapminder")
?tibble
browseVignettes(package = "tibble")
gapminder

#Everything that exists is an object.
#Everything that happens is a function call.

foo <- str(mtcars)
as.character(foo)
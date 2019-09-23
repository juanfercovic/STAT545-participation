#Class Meeting 5 Intro to plotting with ggplot2, Part I

suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(gapminder))
suppressPackageStartupMessages(library(scales))


knitr::opts_chunk$set(fig.width = 5, fig.height = 2, fig.align = "center")


ggplot(gapminder, aes(gdpPercap, lifeExp)) +
  geom_point(alpha = 0.1) +
  scale_x_log10("GDP per capita", labels = scales::dollar_format()) +
  theme_bw() +
  ylab("Life Expectancy")


# Activity: Bar chart grammar

#install packages
#install.packages("tidyverse")
#install.packages("scales")
#install.packages("tsibble")

#Load packages
suppressPackageStartupMessages(library(tidyverse))
suppressPackageStartupMessages(library(gapminder))
suppressPackageStartupMessages(library(scales))
suppressPackageStartupMessages(library(tsibble))
knitr::opts_chunk$set(fig.align = "center")

#ex1
gapminder %>% 
  filter(year == 2007) %>% 
  mutate(continent = fct_infreq(continent)) %>% 
  ggplot(aes(continent)) +
  geom_bar() +
  theme_bw()

#ex2

#a-b-c
(mauna <- tsibble::as_tsibble(co2) %>% 
    rename(month = index, conc = value))

p <- ggplot(mauna, aes(month, conc)) +
  geom_line()

p +
  geom_point(colour = "green")

#d
ggplot(gapminder, aes(gdpPercap, lifeExp)) +
  geom_point(alpha = 0.1)

#bonus

#3

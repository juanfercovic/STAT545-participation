library("tidyverse")
library("gapminder")

gapminder
write.csv(gapminder, './gapminder.csv')  # command that saves in csv

view(gapminder)

# Calculate mean Life Exp per continent
gapminder_sum <- gapminder %>%
  group_by(continent) %>%
  summarize(ave_life = mean(lifeExp))

view(gapminder_sum)

write_csv(gapminder_sum, './gapminder_sum.csv')


gapminder_sum %>%
  ggplot(aes(x = continent,
             y = ave_life)) +
  geom_point() 
  

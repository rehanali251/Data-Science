library(gapminder)
library(ggplot2)
library(dplyr)
library(readr)
gm <- gapminder::gapminder

pd<- gm %>% 
  filter( year== '1982')%>%
  select(country, lifeExp)
View(pd)
ggplot(data= pd,
       aes(x= lifeExp)) +
     geom_histogram() +
  labs(y= 'Number of Countries',
       x= 'Life Expectancy')

#9 Create a line plot for population in Asia, colored by country. Make the lines a bit thicker and more transparent.
pd<- gm %>%
     filter(continent== 'Asia')

ggplot(data=pd,
       aes(x= continent,
           y= pop, color= country)) +
       geom_line()

#11 Create a bar chart of all European countries gdp per capita in 2002
pd<- gm %>%
    filter(year=='2002', continent=='Europe')
ggplot(data=pd,
       aes(x= country,
           y= gdpPercap, fill= 'yellow')) + 
  geom_bar(stat = 'identity')

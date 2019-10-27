# dplyr
install.packages("dplyr")

library(dplyr)

glimpse(gapminder)

#select-- columns only

select(gapminder, year)


select(gapminder, year, lifeExp, country)


select(gapminder, -year)

#filter --- rows only

filter(gapminder, continent == "Asia")


filter(gapminder, continent != "Oceania")

filter(gapminder, year > 2000)

two_countries <- c("Albania", "Dominican Republic")

filter(gapminder, country %in% two_countries)






#piping

min(gapminder[, 'lifeExp'])

gapminder %>%  select(lifeExp) %>% min()

x1 <- 1:5
x <- 2:6

(x1 -x)^2 %>%  sum() %>% sqrt()

gapminder %>%  
  select(-pop, -gdpPercap) %>% 
  filter(continent == 'Asia', year == 2007) %>% 
  head()


# mutate
mean_lifeExp_gapminder
gapminder %>% mutate(newColumn = lifeExp - mean_lifeExp_gapminder) %>% head()

gapminder <- gapminder %>% mutate(newColumn = lifeExp - mean_lifeExp_gapminder) %>% head()


glimpse(gapminder)
# gapmi

gapminder <- gapminder %>%  select(-newColumn)

gapminder2 <- read.csv(file = "gapminder.csv")

gapminder <- gapminder2

summary(gapminder)

dim(gapminder)

# exercise
#filter for Africa, select for lifeExp, country, and year


gapminder %>%   
  filter(continent == 'Africa') %>% 
  select(country, lifeExp, year) %>% 
  glimpse()

#groupby

gapminder %>% 
  group_by(continent)

#summarize
gapminder %>% 
  group_by(continent) %>% 
  summarise(MeanLife = mean(lifeExp))


gapminder %>% 
  group_by(continent, year) %>% 
  summarise(MeanLife = mean(lifeExp))


gapminder %>% 
  group_by(continent, year) %>% 
  summarise(MeanLife = (mean(lifeExp)),
            SeLife = sd(lifeExp)/sqrt(n()))

install.packages("ggplot2")
library(ggplot2)
#ggplot

gapminder %>% 
  group_by(continent, year) %>% 
  summarise(MeanLife = (mean(lifeExp)),
            SeLife = sd(lifeExp)/sqrt(n())) %>% 
  ggplot(mapping = aes(x = year, y= MeanLife, color = continent))+
  geom_line()


install.packages("dplyr")
library(dplyr)
gapminder


# Countries contain min(lifeExp) and max(lifeExp) for each country

gapminder %>% 
  select(country,lifeExp) %>% 
  group_by(country) %>% 
  summarise(min_life = min(lifeExp),
            max_life = max(lifeExp))
# Calculate the average life expectancy per country. 
#Which has the longest average life expectancy and which has the shortest average life expectancy?  

gapminder %>% 
  select(country, lifeExp) %>% 
  group_by(country) %>% 
  summarise(mean_life = mean(lifeExp)) %>% 
  filter(mean_life == min(mean_life) | mean_life == max(mean_life))


# Make a ggplot scatterplot of the lifeExp vs GDPperCap for the countries whose average life expectancy
# is lower than average for all years combined (mean_lifeExp_gapminder, or 59.47444). 
# Color the graph by continent

gapminder %>%
  group_by(country) %>% 
  summarise(mean_le = mean(lifeExp),
            mean_gdp = mean(gdpPercap),
            continent = unique(continent)) %>% 
  filter(mean_le < mean_lifeExp_gapminder) %>% 
  ggplot(aes(x = mean_gdp, y = mean_le, color = continent))+
  geom_point()+ scale_x_log10()
  
  
 
  

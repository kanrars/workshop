install.packages('ggplot2')
library(ggplot2)
# dataframe
#variables
#visualization
gapminder <- read.csv('gapminder.csv', stringsAsFactors = TRUE)

View(gapminder)
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp ))

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp )) + 
  geom_point()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp )) + 
  geom_point()

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color = continent )) + 
  geom_point()

# line plot

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color = continent, by = country )) + 
  geom_line()
# combined visualization

ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, color = continent, by = country )) + 
  geom_line() + geom_point()


lifeExPYear <- ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, by = country )) + 
  geom_line(mapping = aes(color = continent)) + geom_point()

?geom_line

ggsave(filename = 'lifeExp_vs_year.png', plot = lifeExPYear)

lifeExPYear <- ggplot(data = gapminder, mapping = aes(x = year, y = lifeExp, by = country )) + 
   geom_point() + geom_line(mapping = aes(color = continent)) 

# Fitting Models

ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp )) + geom_point()+
 scale_x_log10() + geom_smooth(method = 'loess')
?geom_smooth
?geom_point

# Exercise answer
ggplot(data = gapminder, mapping = aes(x = gdpPercap, y = lifeExp, color= continent )) + 
  geom_point(shape = 17, size = 5)+
  scale_x_log10() + geom_smooth(method = 'loess')
View(gapminder)

# Recap
# ggplot needs three things:
# 1. A dataframe
# 2. Variables from the dataframe for plotting
# 3. How you want to display the data

ggplot(data = gapminder, mapping = aes(x= gdpPercap)) + geom_density()

# color continent

ggplot(data = gapminder, mapping = aes(x= gdpPercap, color = 
                                         continent )) + geom_density()
# fill color

ggplot(data = gapminder, mapping = aes(x= gdpPercap, fill = 
                                         continent )) + geom_density()
# log scale
ggplot(data = gapminder, mapping = aes(x= gdpPercap, color = 
                                         continent )) + geom_density() +
  scale_x_log10()

# based on every continent

ggplot(data = gapminder, mapping = aes(x= gdpPercap, fill = 
                                         continent )) + geom_density() +
  scale_x_log10() + facet_wrap(~continent)

# based on every year

ggplot(data = gapminder, mapping = aes(x= gdpPercap, fill = 
                                         continent )) + geom_density() +
  scale_x_log10() + facet_wrap(~year)

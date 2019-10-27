1:10

# control flow -- for loop
for (my_var in 1:10){
  
  print(my_var)
}

# nested loops
for (i in 1:3){
  for (j in letters[1:3]){
    print(paste(i, j))
  }
}

c <- c()

c
# i value is added to save on the old valus

for ( i in 1:5){
  c <- c(c, i^2)
  print(c)
}

# gapminder data

# "X continent has a life expectancy between ___ and ___"

for (cont in unique(gapminder$continent)){
  min_life <- min(gapminder[gapminder$continent == cont, 'lifeExp'])
  max_life <- max(gapminder[gapminder$continent == cont, 'lifeExp'])
  print(paste(cont, "has a life expectancy between ", min_life, "and", max_life))
}

# mean_life

for (cont in unique(gapminder$continent)){
  mean_life <- mean(gapminder[gapminder$continent == cont, 'lifeExp'])
  
  print(paste(cont, "has a average life expectancy of ", mean_life))
}

# conditional loop
x <- -5

if (x > 0){
  print("positive number.")
}else {
  print("negative number")
}

# if, else if, else
x <- 3
if (x > 0){
  print("positive number.")
}else if (x <0) {
  print("negative number")
} else if (x ==3){
  print("three!")
}
# case 1
x <- 3

if (x ==3){
  print("three.")
}else if (x <0) {
  print("negative number")
} else if (x ==3){
  print("three!")
}

# case 2
x <- 3

if (x >0 ){
  print("positive number.")
  if( x == 3){
    print("three!")
  }
}else if (x <0) {
  print("negative number")
} else if (x ==3){
  print("three!")
}

# loop and conditions

for ( i in c(-1, 3, 0, 7)){
  if (i > 0){
    print('positive number')
  }else if (i < 0){
    print("negative number")
  }else {
    print("zero")
  }
}

# gapminder with loops and conditions
mean_lifeExp_gapminder <- mean(gapminder$lifeExp)
mean_lifeExp_gapminder

# which continents have a lifeExp above 59.04

for ( cont in unique(gapminder$continent )){
  if ( mean(gapminder[gapminder$continent == cont, "lifeExp"])
  > mean_lifeExp_gapminder ){
    print(paste(cont, "has higher than mean_lifeExp_gapminder whole data"))
  }
}



# gapminder
summary(gapminder$gdpPercap)
summary(gapminder[gapminder$year == 2007, 'gdpPercap'])

first <- 1624.8

mid <-11680
third <- 18008.8


  for (country in unique(gapminder$country)){
    country_gdp <- gapminder[gapminder$country == country & gapminder$year == 2007, 'gdpPercap']
    if(country_gdp <= first){
      print(paste(country, "has a gdp at or below the first quartile"))
    }else if (country_gdp == mid){
      print(paste(country, "has a gdp at the midiam "))
    }else if (country_gdp >= third){
      print(paste(country, "has a ggdp at or above the third quartile"))
    }
  }

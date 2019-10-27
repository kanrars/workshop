3 + 2
4/2
2 * (4 + 2)
(4
+ 2)  

# Data type
Data type
# NUMERIC TYPE
3
2.4
4.66
class(3)
class(2.4)
# INTEGER TYPE
3L
class(3L)

as.integer(3)
class(3)
class(as.integer(3))

# COMPLEX TYPE
3 + 1i
class(3 + 1i)
# word type
'dog'
"dog"
class('dog')
class("dog")

#LOGICAL VALUE
TRUE
FALSE
true
false
'true'
class('true')
class(TRUE)
300 > 200
3 == 3L
class(3) == class(3L)
10-5 == sqrt(25)
TRUE > FALSE
'a' >'b'
# VAriable
my_var = 'Tucson'
my_var
my_var <- 'Tucson'
my_var
dog
dog <- 3
dog
3 <- dog
dog

# Naming variable
8day #wrong
.day <- 1 # Hiden variable
.day
# Comples variable name
# dot separated
prob1.lm
# Underscore separated
prob_lm
# CamelCase
probLm
x <- 3 
y <- 2 
y <- 17.4
x+y

# Data structure

# Vector -- hold  only  single (same type of data)data type 
1:10
num_vect <- 1:10
num_vect

logic_vect <- c(TRUE, FALSE, TRUE)
logic_vect

chac_vect <- c('a', 'b', 'g')
chac_vect
class(chac_vect)
class(logic_vect)
class(num_vect)
mixed <- c(TRUE, "A")
class(mixed)
# LIST -- One dimension which can hold MULTIPLE data type
my_list <- list(1, "A", TRUE)
my_list
class(my_list)

# matrix -- MULTIPLE column of vactor --same data type only

my_matrix <- matrix(nrow = 2, ncol = 3)
?matrix
my_matrix

my_matrix <- matrix(1:6, nrow = 2, ncol = 3)
my_matrix

my_matrix <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
my_matrix

# Data Frame - Multiple data type

my_df <- data.frame(id <- letters[1:10], x <- 1:10, y <- 11:20)
my_df
my_df <- data.frame(id = letters[1:10], x = 1:10, y = 11:20)
my_df
class(my_df)

ncol(my_df)
ncol(my_df)
dim(my_df)
str(my_df)
my_fact <- c(rep(1,4), rep(2, 3), rep(3,5))
my_fact
summary(my_df)
cats <- data.frame(coat =c("calico", "black","tabby"),
                   weight = c(2.1, 5.0,3.2 ),
                   likes_string = c(1, 0, 1))
cats
getwd()
write.csv(x=cats, file = "cats_data.csv", row.names = FALSE)
cats2 <- read.csv(file = "cats_data.csv")
cats2
cats$coat
cats$weight
cats$weight + 2
age <- c(3, 4, 5)
age
cbind(cats, age)
cats
# load gapminder data

gapminder <- read.csv(file = "gapminder.csv")
gapminder
str(gapminder)
head(gapminder)
tail(gapminder)
nrow(gapminder)
ncol(gapminder)
dim(gapminder)
summary(gapminder)
colnames(gapminder)
rownames(gapminder)
gapminder$country
min(gapminder$year)
count(nrows(gapminder))
?count
?count.fields()
str(gapminder)
summary(gapminder)
colnames(gapminder)
dim(gapminder)
mean(gapminder$lifeExp)
max(gapminder$pop)

# Subsetting the data
gapminder[1, 1]
gapminder[1:5, 1]
View(gapminder)
gapminder[20:22, 3:6]
# just to view the data , Does not change original file ( For it you have to save it)
gapminder[-3: -1704, ]

gapminder[-3: -1704, -3:-4]

# subset with column/row names

gapminder[, 'lifeExp']
head(gapminder[, 'lifeExp'])
gapminder[, c('lifeExp', 'pop')]
head (gapminder[, c('lifeExp', 'pop')])
gapminder[gapminder$year == 1997, ]
head(gapminder[gapminder$year==1997, ])

tail(gapminder[gapminder$year==1997, ])
gapminder[gapminder$country == 'Gabon', ]

gapminder[gapminder$country == 'Gabon', 4 ]
?c()



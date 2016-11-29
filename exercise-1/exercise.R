# Exercise-1
# Implement code from this book chapter: http://r4ds.had.co.nz/many-models.html

# Packages
install.packages('modelr')
install.packages('tidyverse')
# install.packages('gapminder')
library(gapminder)
library(modelr)
library(tidyverse)
library(dplyr)

# Initial view of the data with ggplot
View(gapminder)
ggplot(gapminder, aes(year, lifeExp, group = country)) + geom_line()

# Look only at new zealand
nz.data <- gapminder[gapminder$country == 'New Zealand',]
ggplot(nz.data, aes(year, lifeExp)) + geom_line() + ggtitle("Life Expectancy Over Time in New Zealand")

nz.mod <- lm(lifeExp ~ year, data = nz.data)

# Better yet, write your own function to accept a country as a parameter,
# and produce the same graphics

# Nest the data by country/continent
by.country <- gapminder %>%
              group_by(country, continent) %>%
              nest()

# Define a statistical model, and store it in a function


# Use the `map` functionality to run the same model for each country separately


# Add additional columns to store your residuals (distance between data and prediction)


# Unnest your residual


# Plot the residuals



# Plot residuals by continent


# Use `glance` to look at model quality


# Compare model quality to continent


# View country that have an r.squared value of less than .25


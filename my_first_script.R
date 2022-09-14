#Set up ----------------------------------------
#install.packages(c("tidyverse", "gapminder", "pacman")) # uncomment if already installed
pacman::p_load(tidyverse, gapminder)

#Loading the data into R ----------------------------------
data(gapminder)
head(gapminder)

#Cleaning data ---------------------------------
gapminder_clean <- gapminder %>% 
    rename(life_exp = lifeExp, gdp_per_cap = gdpPercap) %>% 
    mutate(gdp = pop * gdp_per_cap)
head(gapminder_clean)

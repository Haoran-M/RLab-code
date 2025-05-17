library(tidyverse)
hiv <- read.csv("HIVprev.csv", stringsAsFactors = FALSE)
hiv <- select(hiv, Country, year, prevalence)
  head(hiv)
  tail(hiv)
  summary(hiv)
# q1 lab2
  ggplot(hiv)+
    geom_line(aes(x = year, y = prevalence, group = Country))
  
# q2 lab2
  ggplot(hiv)+
    geom_line(aes(x = year, y = prevalence, group = Country), alpha = 0.1)
#alpha value makes line transparent eg lighter color and more easy to see layers

  
#q3

  cc <- c(
    "Botswana", "Central African Republic", "Congo", "Kenya", "Lesotho", "Malawi",
    "Namibia", "South Africa", "Swaziland", "Uganda", "Zambia", "Zimbabwe"
  )
  hihiv <- filter(hiv, Country %in% cc)

  
#code
  ggplot(hiv)+
    geom_line(aes(x = year, y = prevalence, group = Country), alpha = 2)+
    geom_line(data = hihiv, aes(x = year, y = prevalence, group = Country), color = "red", alpha = 0.5)
  
#q4
  
  ggplot(hiv)+
    geom_line(aes(x = year, y = prevalence, group = Country), alpha = 0.3)+
    geom_line(data = hihiv, aes(x = year, y = prevalence, group = Country), color = "red", alpha = 0.3)+
    geom_smooth(data = hiv, 
              aes(x = year, y = prevalence),  se = TRUE, color = "black") +
    
    geom_smooth(data = hihiv, 
                aes(x = year, y = prevalence),  se = TRUE, color = "red") 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
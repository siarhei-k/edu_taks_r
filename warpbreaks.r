'''
Для дата фрейма warpbreaks я хочу выяснить следующее: 
для каких комбинаций типа шерсти (wool) и натяжения (tension) справедливо, 
что среднее количество поломок больше 25 либо максимальное количество поломок больше 42.
'''
library(dplyr)

warpbreaks %>% 
  group_by(wool, tension) %>% 
  summarise(avg = mean(breaks), max = max(breaks)) %>% 
  filter(avg > 25 | max > 42)

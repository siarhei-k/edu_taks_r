'''
У нас тут стажёр из аспирантуры работает, зовут его Карлош Линнейес или как-то так. 
В общем, он забыл прикрепить свои измерения к общему файлу. Ты не мог бы принять его кусок данных, 
прикрепить его к общему массиву и пересчитать показатели?
Только имей в виду: этот аспирант рассеянный тип, наверняка он что-нибудь напортачил. 
Впрочем, для тебя это наверняка пустяки! Файл avianHabitat2.csv прикрепляю.
Заранее спасибо!

Помогите Арчибальду! Cкачайте файл по ссылке, добавьте новые данные в общий дата фрейм и повторите подсчёт общего покрытия, добавив переменную total_coverage
'''

avian <- read.csv('C:\\Users\\Siarhei\\Downloads\\avianHabitat_sewardPeninsula_McNew_2012\\avianHabitat_sewardPeninsula_McNew_2012.csv')
avian2 <- read.csv(sep = ";", skip = 5, header = T, comment.char = "%", quote = "", na.strings = "Don't remember", file ='C:\\Users\\Siarhei\\Downloads\\avianHabitat2.csv')


#cheking data
str(avian)
head(avian)
summary(avian)
any(!complete.cases(avian))

check_precent_range <- function(x) {
  any(x < 0 | x > 100)
}

# check data with the percentage
library(stringr)
coverage_var <- names(avian)[str_detect(names(avian), '^P')]
sapply(coverage_var, function(name) check_precent_range(avian[[name]]))

# correct data
avian$Observer <- as.factor(avian$Observer) 

# add Carol's data
avian2$Observer = 'Carol'
avian2$total_coverage = 0
avian2
avian <- rbind(avian, avian2)


# find the answer
#coverage_var <- names(avian)[-(1:4)][c(T, F)] - old way of finding data with percentage
avian$total_coverage <- rowSums(avian[, coverage_var])
summary(avian)


           
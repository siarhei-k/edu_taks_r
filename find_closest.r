'''
Предположим, что у нас есть целочисленный вектор v и число n. 
Наша задача — найти позицию элемента в векторе, который ближе всего к числу n. 
При этом если таких элементов несколько, необходимо указать все позиции.

Напишите функцию, которая принимает на вход вектор и число и возвращает вектор индексов, 
отвечающих указанному условию. Индексы должны быть выстроены по возрастанию.
'''

find_closest <- function(v, n) {
  sort(which((abs(v-n) == min(abs(v-n)))))
}
'''
Построим зиккурат! Напишите функцию, которая принимает одно целое число n, а возвращает “ступенчатую” матрицу, 
состоящую из n этажей. Этажи нумеруются с первого, ширина каждой ступеньки равна одной строке или столбцу.
'''

build_ziggurat <- function(n) {
  row_col <- n * 2 - 1
  m <- matrix(1, nrow = row_col, ncol = row_col)
  i <- 0
  while (i < n) {
    m[(i+1):(row_col - i), (i+1):(row_col - i)] <- i+1
    i <- i + 1
  }
  m  
}

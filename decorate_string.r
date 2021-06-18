'''
Пусть функция decorate_string действует поверх функции paste, 
дополнительно приклеивая к результату аргумент pattern. 
При этом этот аргумент должен быть присоединён как в начале строки (строк), 
так и в конце, но перевёрнутый задом наперёд.

Обратите внимание, что функция decorate_string должна помнить про аргументы 
для paste и правильно на них реагировать.
'''


decorate_string <- function(pattern, ...) {
  inv <- sapply(strsplit(pattern, split = ""), function(str) {paste(rev(str), collapse = "")})
  paste0(pattern, paste(...), inv)
}
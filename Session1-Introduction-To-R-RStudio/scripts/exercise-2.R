# Exercise 2
library(ggplot2)
plt <- ggplot(data = apple.stock.prices, aes(x = date, y = close)) + geom_line() + theme_bw()
print(plt)
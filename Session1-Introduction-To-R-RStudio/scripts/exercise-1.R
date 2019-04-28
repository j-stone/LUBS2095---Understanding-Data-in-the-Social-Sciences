#### TidyQuant Exercise 1
install.packages("tidyquant")
library(tidyquant)
####### 
apple.stock.prices <- tq_get("AAPL", get = "stock.prices", from = "2007-06-29")
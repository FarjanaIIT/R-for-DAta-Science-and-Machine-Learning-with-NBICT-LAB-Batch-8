# RDSML-Day-17 👉 Error Bars in R (Part-1)

ToothGrowth
write.csv(ToothGrowth, "ToothGrowth_csv")

tooth_data = ToothGrowth

# Creating a function for summarising the data based on the grouping variables

sum = function(){
  #adding values and result
}

add_values <- function(a, b) {result <- a + b
return(result)}

add_values(23, 25)

# function is used to add two values, is adding arguments. data is used to receive dataset on which we want to work, summary on two variables, groupvariables on grouping variables
# Require is a built in function of r, we can call required packages. function within second bracket is called function body
# we want to get mean on column, na is meant if data is missing.
# ddply is a built in function of plyr, .fun = summary_func is used for data summary, to calculate mean and sd.
# nested function when function is created within function, used to calculate mean and sd
library(plyr)


data_summary = function(data, varname, groupnames){
  require(plyr)
  
  summary_func = function(x, col){
    c(mean = mean(x[[col]]), sd = sd(x[[col]]))
  }
  
  all_summary = ddply(data, groupnames, .fun = summary_func, varname)
  data_sum = rename(all_summary, c("mean" = varname))
  return(data_sum)
}

d_summary = data_summary(tooth_data, varname = "len", groupnames = c("supp", "dose"))

# converting dose to a factor variable

d_summary$dose = as.factor(d_summary$dose)

class(d_summary$dose)

# standar deviation of the mean as error bar with explanation

library(ggplot2)
ggplot(d_summary, aes(x = dose, y = len, fill = supp)) +
  geom_bar(stat = "identity", position = position_dodge()) +
  geom_errorbar(aes(ymin = len - sd, ymax = len + sd), width = 0.2, position = position_dodge(0.9)) +
  theme_minimal()





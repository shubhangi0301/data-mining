
setwd("C:\\Users\\shubh\\OneDrive\\Documents\\Sem 6\\DATA MINING\\programs")
x<-read.csv("dirty_iris.csv")
#replace special values with NA
x[,-5] = lapply(x[,-5], function(y) as.numeric(as.character(y)))

#total number of complete observations
c = sum(complete.cases(x))
cat("Number of complete observations : ", c, "\n")

#percentage of complete observations
cat("Percent of complete observations : ", c/(dim(x)[1])*100, "\n\n")
x = na.omit(x)    #delete records with NAs

install.packages("editrules")
library(editrules)
e<-editfile("myfile.txt")
sm<-violatedEdits(e,x)
summary(sm)
plot(sm)

boxplot(iris$Sepal.Length)
boxplot.stats(iris$Sepal.Length)


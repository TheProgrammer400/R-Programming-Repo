#creating a vector empid
empid = c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
empid

## [1] 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15

# creating a vector age
age = c(30,37,45,32,50,60,35,32,34,43,32,30,43,50,60)
age

## [1] 30 37 45 32 50 60 35 32 34 43 32 30 43 50 60

# creating a vector gender
gender=c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
gender

## [1] 0 1 0 1 1 1 0 0 1 0 0 1 1 0 0

# creating a vector status
status=c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
status

## [1] 1 1 2 2 1 1 1 2 2 1 2 1 2 1 2

# creating a data frame (Combining vectors) 
# basically, creating a whole table consisting of all 4 vectors
empinfo=data.frame(empid,age,gender,status)
empinfo

empinfo$gender <- factor(empinfo$gender, labels = c("male", "female"))
empinfo$gender

empinfo

empinfo$status <- factor(empinfo$status, labels = c("manager", "worker"))
empinfo$status

empinfo


## extracting the male data
male = subset(empinfo, empinfo$gender == "male")
male

# extracting the female data
female = subset(empinfo, empinfo$gender == "female")
female

## summary

summary(empinfo)

## plotting the graph

plot(empinfo$age, type="l",
     main = "Age of employees",
     xlab = "empid",
     ylab = "Age in years",
     col = "blue")

table3 = table(empinfo$gender, empinfo$status)

## plotting bar plot

barplot(table3,beside=T,xlim=c(1,15),ylim=c(0,5),col=c("blue", "red"))
legend("topright",legend=rownames(table3),fill=c('blue','red'),bty="n")

# to find the mode

m = c(1,1,1,1,1,11,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3,3)
freq_table = table(m)
freq_table
most_freq = names(freq_table)[which.max(freq_table)]
most_freq


# box plot
data = c(5,6,7,8,9,0,1,2,3,4)
boxplot(data, main='box plot', col='blue')


# to find the quartile

quantile(m, prob=c(0.25, 0.75))

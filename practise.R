values = c(10, 20, 30, 40)  # Data values
labels = c("A", "B", "C", "D")  # Labels for slices

pie(values, labels=labels, main='pie chart', col = rainbow(length(values)))

lambda= 0.4    
x = 0:6

px = dpois(x, lambda)
px

cum_px = ppois(x, lambda)
cum_px

prob_table = data.frame(px, cum_px)
prob_table

barplot(px, names.arg = x, col='blue',
        xlab = "defective parts", ylab = 'probability',
        main='poisson distribution function')

data = swiss
cor(data$Fertility, data$Agriculture, method='spearman')

mode1 = lm(swiss$Fertility~swiss$Agriculture)
summary(mode1)

mode2 = lm(swiss$Agriculture~swiss$Fertility)
summary(mode2)

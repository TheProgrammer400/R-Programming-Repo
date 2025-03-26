x = sample(100:500, 20, replace=TRUE)
x

x = 6*x
x = x + 100
x = x / 50
x

for(i in 1:21){
  x = x + 20
}

for(i in 1:12){
  x = x + 15
}

x
mean(x)
median(x)
var(x)

freq_table = table(x)
most_freq = names(freq_table)[which.max(freq_table)]
most_freq


values = c(10, 20, 30, 40)  # Data values
labels = c("A", "B", "C", "D")  # Labels for slices
pie(values, labels = labels, main = "Pie chart", col=rainbow(length(labels)))

pct = round(values/sum(values) * 100, 1)
labels = paste(labels, pct, "%")
pie(values, labels=labels, main="Pie chart", col=rainbow(length(labels)))

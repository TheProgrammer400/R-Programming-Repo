data <- cars
data

summary(data)

# find the variance of speed
v1 <- var(data$speed)
v1

# find the variance of distance
v2 <- var(data$dist)
v2

# to find the covariance
covariance = cov(data$speed, data$dist)
covariance

# to find the correlation coefficient using Pearson's formula
corr = covariance / (sd(data$speed) * sd(data$dist))

# another way of doing the same
corr = cor(data$speed, data$dist)
corr

cor.test(data$speed, data$dist)

# find regression

regression1 = lm(data$speed~data$dist)
regression1

plot(data$speed, data$dist)
abline(regression1)
summary(regression1)

summary.lm(regression1)

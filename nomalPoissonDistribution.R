# no. of trails
m = 20

# probability of success
ps = 0.02
  
lambda = m * ps

# probability of atleast 2 success
p1 = sum(dpois(2:m, lambda))

# probability of atmost 2 success
p2 = sum(dpois(0:2, lambda))

# probablity of exact 2 success
p3 = dpois(2, lambda)

# plot the graph
x1 = 0:m
px1 = dpois(x1, lambda)
plot(x1, px1, type='h',
     xlab='values of x',
     ylab='probability distribution of x',
     main='Poisson Distribution')
# main is basically title of the graph




# normal distribution

x = seq(0, 40)
y = dnorm(x, mean=20, sd=5)

# plot the graph
plot(x, y, type='l')

# proportion of the jobs that take less than 15 minutes
p1 = pnorm(15, mean=20, sd=5)

x2 = seq(0, 15)
y2= pnorm(x2, mean=20, sd=5)

polygon(c(0, x2, 15), c(0, y2, 0), col='yellow')

# proportion of jobs take more than 25 minutes
p2 = pnorm(40, mean=20, sd=5) - pnorm(25, mean=20, sd=5)

# proportion of the jobs take between 15 and 25 minutes 
p3 = pnorm(25, mean=20, sd=5) - pnorm(15, mean=20, sd=5)

x3 = seq(15, 25)
y3 = dnorm(x3, mean=20, sd=5)

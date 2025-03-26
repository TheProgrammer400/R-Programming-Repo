# define the no. of trials
n = 4

# define the probability of success
p = 0.04

# probability of getting exactly 2 success
dbinom(2, n, p)

# probability of getting atleast 2 success
sum(dbinom(2:4, n, p))

# probability of getting atmost 2 success
sum(dbinom(0:2, n, p))

# or it can be done in following method
pbinom(2, n, p)

x = 0:n
px = dbinom(x, n, p)
Ex = weighted.mean(x, px)

# plot the graph
plot(x,px,type="h",
    xlab="values of x",
    ylab="Probability distribution of x",
    main="Binomial distribution")

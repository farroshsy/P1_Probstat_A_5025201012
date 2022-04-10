# Poin 5a
lambda = 3
set.seed(1)
rexp(lambda)

# Poin 5b
par(mfrow = c(2,2))

set.seed(1)
hist(rexp(10))

set.seed(1)
hist(rexp(100))

set.seed(1)
hist(rexp(1000))

set.seed(1)
hist(rexp(10000))

# Poin 5c

lambda = 3

rataan <- 1 / lambda
rataan

varian <- 1 / (lambda * lambda)
varian

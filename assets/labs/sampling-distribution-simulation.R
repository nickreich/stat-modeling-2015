

## create sampling distribution for a regression parameter

## fix values for the simulation
n <- 100
b0 <- 1
b1 <- 4
s2 <- 100
nsim <- 1000
xmax <- 1
x <- runif(n, 0, xmax)

## run simulation
b1_ests <- rep(NA, nsim)
b1_tvalues <- rep(NA, nsim)
for(i in 1:nsim){
    y <- b0 + b1*x + rnorm(n, sd=sqrt(s2))
    slr <- lm(y~x)
    b1_ests[i] <- coef(slr)[2]
    b1_tvalues[i] <- summary(slr)$coefficients["x","t value"]
}
b1_H0_reject <- abs(b1_tvalues) > qt(.975, n-2)

## calculate summary statistics for beta_1
mean(b1_ests)
var(b1_ests)
hist(b1_ests)
sum(b1_H0_reject)


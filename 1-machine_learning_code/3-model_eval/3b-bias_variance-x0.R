
set.seed(123)

n <- 30
sigma <- 0.5

M <- 10000
d <- data.frame()
for (m in 1:M) {

x <- seq(from = 0, to = 4*pi, length = n)     # x
y <- sin(x) + rnorm(n, sd = sigma)            # y = f(x) + eps

deg <- 15   # try 4, 7, 15
dpoly_xy <- data.frame(poly(x,deg), y)
md <- lm(y ~ ., dpoly_xy)                   # f^ (poly degree `deg`)

x0 <- 7                                            # x0
f_x0 <- sin(x0)                                    # f(x0)
y_x0 <- f_x0 + rnorm(1, sd = sigma)                # f(x0) + eps
dpoly_x0 <- data.frame(predict(poly(x,deg),x0))    
fhat_x0 <- predict(md, newdata = dpoly_x0)         # f^(x0)

d <- rbind(d, data.frame(f_x0, y_x0, fhat_x0))
}

Err <- mean((d$y_x0-d$fhat_x0)^2)

IrrErr <- sigma^2
Bias <- mean(d$fhat_x0-d$f_x0)
Variance <- mean((d$fhat_x0-mean(d$fhat_x0))^2)
Err2 <- IrrErr + Bias^2 + Variance

data.frame(x0, sigma, deg, Err, Err2, IrrErr, Bias^2, Variance)
#    x0 sigma deg  Err      Err2      IrrErr Bias.2      Variance
# 1  7   0.5   4 0.68281   0.6668455   0.25 0.3889342    0.02791137
# 1  7   0.5   7 0.3009407 0.29706     0.25 0.00236579   0.04469418
# 1  7   0.5  15 0.3462715 0.3412109   0.25 4.128663e-06 0.09120675

# one can also do: 
# (1) average over x0's
# (2) vary sigma (signal/noise ratio)



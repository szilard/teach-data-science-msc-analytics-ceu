
set.seed(123)

n <- 30
sigma <- 0.5

x <- seq(from = 0, to = 4*pi, length = n)     # x
y <- sin(x) + rnorm(n, sd = sigma)            # y = f(x) + eps

deg <- 5
dpoly_xy <- data.frame(poly(x,deg), y)
md <- lm(y ~ ., dpoly_xy)                   # f^ (poly degree `deg`)

plot(y ~ x)                                 # y ~ x
lines(predict(md) ~ x)                      # f^(x) ~ x

x0 <- 7                                            # x0
f_x0 <- sin(x0)                                    # f(x0)
y_x0 <- f_x0 + rnorm(1, sd = sigma)                # f(x0) + eps
dpoly_x0 <- data.frame(predict(poly(x,deg),x0))    
fhat_x0 <- predict(md, newdata = dpoly_x0)         # f^(x0)
lines(x0,f_x0, col="green", type="p")
lines(x0,y_x0, col="red", type="p")
lines(x0,fhat_x0, col="blue", type="p")






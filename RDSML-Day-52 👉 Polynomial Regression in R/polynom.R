dataset = read.csv("polynom_data.csv")

attach(dataset)

length(x)
length(y)

(x1, y1), (x2, y2), (x3, y3), ...

plot(y, type = "l")  # uses index as x automatically

x <- rep(100, length(y))
plot(x, y)  # plots all y values at x = 5



plot(x, y, main = "Polynomial Regression Example", pch = 19)

polynom_model = lm(y ~ poly(x, 2, raw = TRUE))

summary (polynom_model)


x_new <- seq(min(x), max(x), length.out = 100)

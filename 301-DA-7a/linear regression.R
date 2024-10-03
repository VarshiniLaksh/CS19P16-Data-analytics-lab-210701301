heights <- c(150, 160, 165, 170, 175, 180, 185)
weights <- c(55, 60, 62, 68, 70, 75, 80)

data <- data.frame(heights, weights)
linear_model <- lm(weights ~ heights, data = data)

print(summary(linear_model))

plot(data$heights, data$weights,
     main = "Linear Regression: Weight vs. Height",
     xlab = "Height (cm)",
     ylab = "Weight (kg)",
     pch = 19, col = "blue")

abline(linear_model, col = "red", lwd = 2)

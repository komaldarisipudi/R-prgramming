library(ggplot2)
data(airquality)
na_percentage_threshold <- 0.1 
missing_percent <- colMeans(is.na(airquality))
for (col in colnames(airquality)) {
  if (missing_percent[col] < na_percentage_threshold) {
    airquality[is.na(airquality[[col]]), col] <- mean(airquality[[col]], na.rm = TRUE)
  } else {
    airquality <- airquality[complete.cases(airquality), ]
  }
}
lm_model <- lm(Ozone ~ Solar.R, data = airquality)
summary(lm_model)
ggplot(airquality, aes(x = Solar.R, y = Ozone)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE, color = "red") +
  labs(title = "Scatter Plot of Ozone vs. Solar.R with Regression Line")
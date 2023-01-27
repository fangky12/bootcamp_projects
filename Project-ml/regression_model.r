# build a linear regression model

head(mtcars)

model <- lm(mpg ~ hp + wp, data = mtcars)

summary(model)

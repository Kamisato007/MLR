test_that("Summary table works", {
  expect_equal(unname(summary(lm(hp~mpg,data = mtcars))$coefficients),
      get_coef_table(unname(model.matrix(hp~mpg,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt,data = mtcars))$coefficients),
      get_coef_table(unname(model.matrix(hp~mpg+wt,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt+cyl,data = mtcars))$coefficients),
      get_coef_table(unname(model.matrix(hp~mpg+wt+cyl,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(Sepal.Length~Sepal.Width,data = iris))$coefficients),
      get_coef_table(unname(model.matrix(Sepal.Length~Sepal.Width,data = iris)),
                     iris$Sepal.Length))
})

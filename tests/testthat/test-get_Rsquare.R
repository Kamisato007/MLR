test_that("Get R^2 works", {
  expect_equal(unname(summary(lm(hp~mpg,data = mtcars))$r.squared),
      get_Rsquare(unname(model.matrix(hp~mpg,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt,data = mtcars))$r.squared),
      get_Rsquare(unname(model.matrix(hp~mpg+wt,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt+cyl+disp,data = mtcars))$r.squared),
      get_Rsquare(unname(model.matrix(hp~mpg+wt+cyl+disp,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(Sepal.Length~Sepal.Width,data = iris))$r.squared),
      get_Rsquare(unname(model.matrix(Sepal.Length~Sepal.Width,data = iris)),
                  iris$Sepal.Length))
})

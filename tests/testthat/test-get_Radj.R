test_that("Get R^2 adj works", {
  expect_equal(unname(summary(lm(hp~mpg,data = mtcars))$adj.r.squared),
      get_Radj(unname(model.matrix(hp~mpg,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt,data = mtcars))$adj.r.squared),
      get_Radj(unname(model.matrix(hp~mpg+wt,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt+cyl+disp,data = mtcars))$adj.r.squared),
      get_Radj(unname(model.matrix(hp~mpg+wt+cyl+disp,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(Sepal.Length~Sepal.Width,data = iris))$adj.r.squared),
      get_Radj(unname(model.matrix(Sepal.Length~Sepal.Width,data = iris)),
                           iris$Sepal.Length))
})

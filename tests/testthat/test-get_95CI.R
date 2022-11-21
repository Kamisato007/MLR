test_that("95%CI works", {
  expect_equal(unname(confint(lm(hp~mpg,data = mtcars))),
              get_95CI(unname(model.matrix(hp~mpg,data = mtcars)),mtcars$hp))
  expect_equal(unname(confint(lm(hp~mpg+wt,data = mtcars))),
               get_95CI(unname(model.matrix(hp~mpg+wt,data = mtcars)),mtcars$hp))
  expect_equal(unname(confint(lm(hp~mpg+wt+cyl+disp,data = mtcars))),
               get_95CI(unname(model.matrix(hp~mpg+wt+cyl+disp,
               data = mtcars)),mtcars$hp))
  expect_equal(unname(confint(lm(Sepal.Length~Sepal.Width,data = iris))),
               get_95CI(unname(model.matrix(Sepal.Length~Sepal.Width,
               data = iris)),iris$Sepal.Length))
})

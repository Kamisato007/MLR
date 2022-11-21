test_that("get_F works", {
  expect_equal(unname(summary(lm(hp~mpg,data = mtcars))$fstatistic),
    get_F(unname(model.matrix(hp~mpg,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt,data = mtcars))$fstatistic),
    get_F(unname(model.matrix(hp~mpg+wt,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(hp~mpg+wt+cyl+disp,data = mtcars))$fstatistic),
    get_F(unname(model.matrix(hp~mpg+wt+cyl+disp,data = mtcars)),mtcars$hp))
  expect_equal(unname(summary(lm(Sepal.Length~Sepal.Width,data = iris))$fstatistic),
    get_F(unname(model.matrix(Sepal.Length~Sepal.Width,data = iris)),iris$Sepal.Length))

})

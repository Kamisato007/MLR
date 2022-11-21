test_that("anova works", {
  expect_equal(unname(as.matrix(anova(lm(hp~mpg,data = mtcars)))),
      get_anova(unname(model.matrix(hp~mpg,data = mtcars)),mtcars$hp))
  expect_equal(unname(as.matrix(anova(lm(hp~mpg+wt,data = mtcars)))),
      get_anova(unname(model.matrix(hp~mpg+wt,data = mtcars)),mtcars$hp))
  expect_equal(unname(as.matrix(anova(lm(hp~mpg+wt+cyl,data = mtcars)))),
      get_anova(unname(model.matrix(hp~mpg+wt+cyl,data = mtcars)),mtcars$hp))
  expect_equal(unname(as.matrix(anova(lm(Sepal.Length~Sepal.Width,data = iris)))),
      get_anova(unname(model.matrix(Sepal.Length~Sepal.Width,data = iris)),
                iris$Sepal.Length))
})

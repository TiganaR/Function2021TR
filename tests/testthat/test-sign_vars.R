test_that("Checking my function", {
  expect_error(sign_vars(iris[,1:3], as.data.frame(iris[,4])))
  expect_equal(length(sign_vars(iris[,1:3], as.vector(iris[,4]))), ncol(iris[,1:3]))
  expect_length(sign_vars(iris[,1:3], as.vector(iris[,4])), 3)
})

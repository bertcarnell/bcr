test_that("+= works", {
  a <- 1
  b <- 2
  a %+=% 1
  expect_equal(a, 2)
  a %+=% b
  expect_equal(a, 4)
  expect_equal(b, 2)
  a %+=% sqrt(b)
  expect_equal(a, 4 + sqrt(2))
})

test_that("*= works", {
  a <- 3
  b <- 2
  a %*=% 5
  expect_equal(a, 15)
  a %*=% b
  expect_equal(a, 30)
  expect_equal(b, 2)
})

test_that("-= works", {
  a <- 3
  b <- 2
  a %-=% 1
  expect_equal(a, 2)
  a %-=% b
  expect_equal(a, 0)
  expect_equal(b, 2)
})

test_that("/= works", {
  a <- 3
  b <- 2
  a %/=% 3
  expect_equal(a, 1)
  a %/=% b
  expect_equal(a, 0.5)
  expect_equal(b, 2)
})

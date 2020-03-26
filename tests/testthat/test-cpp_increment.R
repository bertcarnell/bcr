test_that("inc works", {
  a <- 1
  inc(a)
  inc(a)
  expect_equal(a, 3)
  expect_true(is.numeric(a))
  expect_false(is.integer(a))
  
  b <- 4L
  inc(b)
  expect_equal(b, 5L)
  expect_true(is.integer(b))
})

test_that("dec works", {
  a <- 8
  dec(a)
  dec(a)
  expect_equal(a, 6)
  expect_true(is.numeric(a))
  expect_false(is.integer(a))
  
  b <- 4L
  dec(b)
  expect_equal(b, 3L)
  expect_true(is.integer(b))
})


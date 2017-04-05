library(testthat)
library(Mypackage)
context("make_filename")

test_that("the function make_filename returns warring if argument is not numeric",{

  x <- "string"
  expect_warning(make_filename(x))



})

test_that("the function make_filename retuns correct filename if year is inserted",{
  x <- 2013
  y <- "accident_2013.csv.bz2"

  expect_equal(make_filename(x), y)

})



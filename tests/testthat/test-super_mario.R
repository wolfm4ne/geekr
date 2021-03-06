context("test-super_mario")
library(geekr)

test_that("no errors works", {
  expect_warning(
    super_mario(sound = "F")
    , "'F' is not a valid sound nor path, playing a random sound instead."
    )
  Sys.sleep(5)
})

test_that("https/http", {
  expect_warning(
    super_mario(
      sound = "https://themushroomkingdom.net/sounds/wav/smw/smw_1-up.wav"
    )
    , "Can't currently use https urls, only http."
  )
  Sys.sleep(5)
  expect_warning(
    super_mario(sound = "http://amazonsmile.com")
  )
})

test_that("sound from sounds works", {
  expect_equal(
    super_mario(
      sound = "coin"
    )
    , super_mario()
  )
})

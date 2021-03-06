createBootstrapMultiplierFunction <- function () {
  cat("\n Testing \'createBootstrapMultiplier\' \n")

  myKernel = normalDifferenceKernel
  myBandwidth = 1
  mySampleSize = 10

  mockBootstrapMultiplier <- createBootstrapMultiplier(kernel = myKernel,
                                                       bandwidth = myBandwidth,
                                                       sampleSize = mySampleSize)

  cat ("mockBootstrapMultiplier[1:3] =", mockBootstrapMultiplier[1:3], "\n")
  cat ("dim(mockBootstrapMultiplier) =", dim(mockBootstrapMultiplier), "\n")
  expect_that(mockBootstrapMultiplier, is_a("matrix"))
}

test_that("Testing \'createBootstrapMultiplier\'", {
  createBootstrapMultiplierFunction()


}
)

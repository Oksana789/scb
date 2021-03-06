createMultiplierCovarianceByKernelFunction <- function () {
  cat("\n Testing \'createMultiplierCovarianceByKernel\' \n")
  myKernel = normalDifferenceKernel
  myBandwidth = 1
  mySampleSize = 10

  mockMultiplierCovarianceByKernel <- createMultiplierCovarianceByKernel(kernel = myKernel,
                                                                         bandwidth = myBandwidth,
                                                                         sampleSize = mySampleSize)

  cat ("mockMultiplierCovarianceByKernel[1:3, 1:3] =", mockMultiplierCovarianceByKernel[1:3, 1:3], "\n")
  cat ("dim(mockMultiplierCovarianceByKernel) =", dim(mockMultiplierCovarianceByKernel), "\n")
  expect_that(mockMultiplierCovarianceByKernel, is_a("matrix"))
}

test_that("Testing \'createMultiplierCovarianceByKernel\'", {
  createMultiplierCovarianceByKernelFunction()
}
)

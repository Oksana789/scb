computeMEbyCovHatFunction <- function () {
  cat("\n Testing \'computeMEbyCovHatFunction\' \n")
  mySampleSize=5
  myTParCount = 10
  mockTParArray <- createTParArray(tParCount = myTParCount)
  # may be different
  mockTVMA1Array <- createTVMA1CoefArray(coefFunction = sin,sampleSize = mySampleSize)

  mockSample <- createSample(sampleSize = myTParCount)

  myLag = 3
  myLagCount = myTParCount - 1
  myKernel = normalDifferenceKernel
  myBandwidth = 1
  # form all rho hats
  # first try fakes
  mockAllCorHats <- computeAllCorHats(tParArray = mockTParArray,
                                      lagCount = myLagCount,
                                      sample = mockSample,
                                      kernel = myKernel,
                                      bandwidth = myBandwidth)
  me <- computeMEbyCovHat(tParArray = mockTParArray,
                          lag = myLag,
                          lagCount = myLagCount,
                          sample = mockSample,
                          kernel = normalDifferenceKernel,
                          bandwidth = 0.5,
                          nonCoverageProbability = 0.05,
                          allCorHats = mockAllCorHats,
                          C_K = -1.978325,
                          # int_sq_der = 0.306951,
                          PHI_K_NORMAL_DIFF = 0.4065)
  # expect_that(mockBand, is_a("matrix"))
  # expect_that(dim(mockBand)[1], equals(2))  # the number of rows
  # expect_that(dim(mockBand)[2], equals(10)) # the number of cols

  cat("me = ", me)
}

test_that("Testing \'computeMEbyCovHat\'", {
  computeMEbyCovHatFunction()
}
)

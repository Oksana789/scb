createTVMA1CoefArrayFunction <- function() {
  cat("\n Testing \'createTVMA1CoefArray\' for length and being numeric \n")

  mySampleSize = 5
  mockTVMA1CoefArray <- createTVMA1CoefArray(coefFunction = sin,
                                             sampleSize = mySampleSize)

  cat ("mockTVMA1CoefArray =", mockTVMA1CoefArray[1:mySampleSize], "\n",
       "length(mockTVMA1CoefArray) =", length(mockTVMA1CoefArray), "\n")
 #expect_that(mockTVMA1CoefArray, is_a("numeric"))

}



test_that("Testing tests_createTVMA1CoefArray for length and being numeric", {
  createTVMA1CoefArrayFunction()
  }
)

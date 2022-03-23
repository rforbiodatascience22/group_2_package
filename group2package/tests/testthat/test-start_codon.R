test_that("rna length is number of characters", {
  expect_equal(start_codon("CTACTA"), c("CTA", "CTA"))
})

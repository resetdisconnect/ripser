library(ripserq)
dist_vec <- c(4, 3, 5, 5, 3, 4)
result <- ripser_vec(dist_vec, dim = 1, thresh = 6.0, ratio = 1.0, p = 2)
result

# FIXME: Once output is handled one way (assignment to name versus print to
# console), attempting the other way crashes R.
ripser_vec(dist_vec, dim = 1, thresh = 6.0, ratio = 1.0, p = 2)

# # extra experiments
#
# euro_vec <- eurodist |> as.vector()
# result_euro <- ripser_vec(euro_vec, dim = 1, thresh = 5000, ratio = 1.0, p = 2)
#
# # toy illustration
# attr(result, "filtration") <- "Vietoris-Rips"
# attr(result, "threshold") <- 6.0
# attr(result, "max_dim") <- 1

library(phutil)
as_persistence(result)

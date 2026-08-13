set.seed(32)
coral_matrix <- matrix(0, nrow = 5, ncol = 5)
coral_matrix
random <- sample(1:25, size = 8, replace = FALSE)
random

1:25

# Rows
1:25 %% 5
(1:25 - 1) %% 5
(1:25 - 1) %% 5 + 1

# Columns
1:25 %/% 5
(1:25 - 1) %/% 5 + 1

cell_label <- 6
cell_row <- (6-1) %/% 5 + 1
cell_col <- (6-1) %% 5 + 1
coral_matrix[cell_row, cell_col] <- 1
coral_matrix

source("R/util.R")

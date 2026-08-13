source("R/util.R")
set.seed(221)

reef <- random_reef(coral_number = 8)

years <- seq(2004, 2024, by = 2)
coral_cover_pct <- integer(11) 

coral_cover_pct[1] <- mean(reef)

for (t in 2:length(coral_cover_pct)) {
  prev_reef <- reef
  reef <- matrix(0, nrow = 5, ncol = 5)
  for (r in 1:5) { 
    for (c in 1:5) {
      if (prev_reef[r, c] == 1) {
        print(paste("Coral found at", r, c))
        coral_outcome <- sum(sample(1:6, size = 2, replace = TRUE))
        if (coral_outcome <= 3) {
          print("Coral died")
          reef[r, c] <- 0 
        } else if (coral_outcome >= 6) {
          print("Coral grew")
          reef[r, c] <- 1 # LATER, add growth offset conditions
        } 
        else {
          print("Coral survived")
          reef[r, c] <- 1 
        }
      }
    }
  }
  print(paste("year:", years[t]))
  print(reef)

  coral_cover_pct[t] <- mean(reef)

}
coral_cover_pct

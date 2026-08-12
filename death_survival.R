set.seed(221)

reef <- matrix(0, nrow = 5, ncol = 5)
random_coral <- sample (1:25, size = 8)

for (rc in random_coral) {
    rc_row <- (rc - 1) %/% 5 + 1
    rc_col <- (rc - 1) %% 5 + 1
    reef[rc_row, rc_col] <- 1
}
reef

print(reef)

years <- seq(2004, 2024, by = 2)
coral_cover_pct <- integer(11) 
years
coral_cover_pct

coral_cover_pct[1] <- mean(reef)
coral_cover_pct

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
        } else {
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

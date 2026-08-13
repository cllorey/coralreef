# Write a function to encapsulate the logic for putting 8 random corals on the initialized reef. 
# Rather than hard-coding the number at 8, make the number of corals an input.

random_reef <- function(coral_number) {
  reef <- matrix(0, nrow = 5, ncol = 5)
  
  random_coral <- sample(1:25, size = coral_number, replace = FALSE)
  
  for (rc in random_coral) {
    rc_row <- (rc-1) %/% 5 + 1 # Figuring out what row each rc is in
    rc_col <- (rc-1) %% 5 + 1 # Figuring out what column each rc is in
    reef[rc_row, rc_col] <- 1
  }
  
  return(reef)
}

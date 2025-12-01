library(dslabs)
data(heights)
#Write an ifelse() statement that returns 1 if the sex is Female and 2 if the sex is Male.What is the sum of the resulting vector?
count_vec <- ifelse(heights$sex == "Female", 1, 2)
total <- sum(count_vec)
total

#Write an ifelse() statement that takes the height column and returns the height if it is greater than 72 inches and returns 0 otherwise
greater_vec <- ifelse(heights$height > 72 , heights$height, 0)
total <- mean(greater_vec)
total

#Write a function inches_to_ft that takes a number of inches x and returns the number of feet. One foot equals 12 inches.

inchetofeet <- function(x){
  x/12
}
inchetofeet(144)

feet_vec <- ifelse(inchetofeet(heights$height) < 5 , 1 , 0)
total <- sum(feet_vec)
total

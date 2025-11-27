library(dslabs)
data(heights)
options(digits = 3)
dim(heights[heights$height > mean(heights$height) & heights$sex == "Female", ])


dim(heights[heights$sex == "Female", ])

min(heights$height)

which.min(heights$height)

max(heights$height)

x <- floor(min(heights$height)) : ceiling(max(heights$height))

sum(!x %in% heights$height)

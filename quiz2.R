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

#Calculate mean by heigth and sex:
tapply(heights$height, heights$sex, mean)

#Apply a function for each element in vector
sapply(1:5, sqrt)

# Apply a function for vectors simultanealy
mapply(sum, c(1,2,3), c(4,5,6))


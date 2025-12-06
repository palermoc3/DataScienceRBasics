library(dslabs)
data(murders)
sort(murders$total)

x <- c(31, 4, 15, 92, 65)
x
# puts elements in order
sort(x)    

# returns index that will put x in order
index <- order(x)    

# rearranging by this index puts elements in order
x[index]    
order(x)

murders$state[1:10]
murders$abb[1:10]

# order abbreviations by total murders
index <- order(murders$total)
murders$abb[index]    

# highest number of total murders
max(murders$total)    
# index with highest number of murders
i_max <- which.max(murders$total)    
# state name with highest number of total murders
murders$state[i_max]    

x <- c(31, 4, 15, 92, 65)
x
# returns ranks (smallest to largest)
rank(x)    
# Carregar o pacote e os dados
library(dslabs)
data(murders)


# how to obtain the murder rate
murder_rate <- murders$total / murders$population * 100000

# ordering the states by murder rate, in decreasing order
murders$state[order(murder_rate, decreasing=TRUE)]



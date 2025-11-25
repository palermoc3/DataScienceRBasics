# Carregar o pacote e os dados
library(dslabs)
data(olive)

# Mostrar as primeiras linhas do dataset
head(olive)

# Criar scatterplot: Palmitic vs Palmitoleic Acid
plot(olive$palmitic, olive$palmitoleic,
     xlab = "Palmitic Acid (%)",
     ylab = "Palmitoleic Acid (%)",
     main = "Scatterplot: Palmitic vs Palmitoleic Acid",
     pch = 19, col = "red")


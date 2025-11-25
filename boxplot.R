library(dslabs)
data(olive)

boxplot(palmitic ~ region, data = olive,
        xlab = "Region",
        ylab = "Palmitic Acid (%)",
        main = "Palmitic Acid Percentage by Region",
        col = "lightgreen")


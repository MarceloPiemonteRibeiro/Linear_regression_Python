# title: "Example test"

## Reading datasets
getwd()
setwd("C:/Users/Ribeiro/OneDrive/Documents/OneDrive/IHEID/Dissertation/Git/Test")
# Be careful about the format of the source dataset file
AgeSal = read.csv("AgeSal.csv", header = TRUE, sep = ",")
Haies110 = read.csv("Haies110.csv", header = TRUE, sep=",")
MarkVal = read.csv("MarkVal.csv", header = TRUE, sep = ",", row.names=1)
TVAds = read.csv("TVAds.csv", header = TRUE, sep = ",", row.names=1)
Tracteurs = read.csv("Tracteurs.csv", header = TRUE, sep = ",")
PretBanc = read.csv("PretBanc.csv", header = TRUE, sep = ",")

## Exercise 1
### 1.1 Pearson's correlation coefficient
#### Bivariate case
attach(AgeSal)
help(cor)
plot(Age, Salaire, main="Scatterplot of Salaries w.r.t Ages", cex=1.5, pch=1) # shape is not clear
cor(Age, Salaire) # Pearson's correlation coefficient of Salaire with Age - quite low 0.12
cor(Salaire, Age) # the same
detach("AgeSal")
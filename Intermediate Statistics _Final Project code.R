#Scenario 1

## Running a 1 proportion z test

prop.test(28, 94, .16, correct = FALSE)

#Scenario 2

library(gmodels)

df2 <- antiseptics

df2.expanded <- df2[rep(row.names(df2), df2$Number.of.applications), 1:2]

CrossTable(antiseptics$Clinic, antiseptics$Antiseptic.Type, fisher=TRUE, chisq = TRUE, expected = TRUE, sresid=TRUE, format="SPSS")

#Scenario 3

library("dplyr")
library("rcompanion")
library("car")
library("tidyr")

df3 <- read.csv("C:/Users/Ronis/Desktop/DS105 Intermediate Statistics/final project/savings/savings.csv")

df3.reformat <- gather(df3, key="Group", value="Price")

df4 <- na.omit(df3.reformat)

df4$Price <- as.numeric(df4$Price)

plotNormalHistogram(df4$Price)

bartlett.test(Price ~ Group, data=df4)

savingsANOVA <- aov(df4$Price ~ df4$Group)
summary(savingsANOVA)
pairwise.t.test(df4$Price, df4$Group, p.adjust="bonferroni")

savingsMeans <- df4 %>% group_by(Group) %>% summarize(Mean = mean(Price))

#Scenario 4

prop.test(x= c(129, 74), n= c(545, 203), alternative = "two.sided")
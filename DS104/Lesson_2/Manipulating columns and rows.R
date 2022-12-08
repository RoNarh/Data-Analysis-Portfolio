# Import Data

Tea <- read.csv("tea.csv", header = TRUE, sep = ",")

# Transpose data. Change from long to wide

Tea1 <- t(Tea)

#t(), it changes your data from a data frame
#into a matrix. You can determine this by using 
#the class() function on tea1

class(Tea1)

#It can easily be turned into a data frame using
#the function as.data.frame():

Tea2 <- as.data.frame(Tea1)

# class() function will help you verify that things went as planned

class(Tea2)

#use the gsub() function within the names() function to rename columsns

names(Tea2) <- gsub("V", "Year", names(Tea2))

#Transformations in R activity

#Import Data

energy <- read.csv("energy.csv", header = TRUE, sep = ",")

#Create a new dataframe that is transposed

energy1 <- t(energy)
energy2 <- as.data.frame(energy1)

#Rename Column 

names(energy2) <- gsub("V", "Year", names(energy2))


#Hands On Practice 

#Import Data From Excel ZikaColombia and ZikaUS

#Add ,together that data so they can be analyzed together

zikaglobal <- rbind(ZikaColombia, ZikaUS)

head(zikaglobal)
tail(zikaglobal)



#Imported 'FakeNews' Dataset

#Install packages

install.packages("tidyr")
library("tidyr")

#Add a column labeled StoryType and fill it with Fake

FakeNews$StoryType = "Fake"

#Remove the when column

keeps <- c("url", "tracker", "StoryType")
FakeNews1 <- FakeNews[keeps]

#Seperate url into url and domain

FakeNews2 <- separate(FakeNews1, url, c("url", "domain"), sep="_")

#Put back together the domain column

FakeNews3<- unite(FakeNews2, url, url, domain, sep = "_")

#Keep only the first ten rows of the data

FakeNews4 <- FakeNews3[1:10, 1:3]
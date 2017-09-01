q1Table<-read.table(file.choose(),sep="\t")
q1Df<- data.frame(q1Table)
colnames(q1Df) <-c("City","Category","ReviewCount")
View(q1Table)
View(q1Df)

charlotteDf<- data.frame(city=character(0),totalReviews=integer(0))
charlotteDf<-rbind("Charlotte",sum(charlotteTable$ReviewCount))

aggDataCities<- aggregate(q1Table$V3,by=list(Category=q1Table$V2,q1Table$V1),FUN=sum)

charlotteTable<- q1Df[1019:1609,]
clevelandTable<- q1Df[1610:2081,]
lasVegasTable<-q1Df[2082:2729,]
madisonTable<-q1Df[251:682,]
phoenixTable<-q1Df[683:1018,]
pittsburghTable<-q1Df[2730:2957,]
urbanaTable<-q1Df[1:250,]


avgReviewCountCharlotte<- sum(charlotteTable$ReviewCount)/591
avgReviewCountCleveland<- sum(clevelandTable$ReviewCount)/472
avgReviewCountLasVegas<- sum(lasVegasTable$ReviewCount)/648
avgReviewCountMadison<- sum(madisonTable$ReviewCount)/432
avgReviewCountPhoenix<- sum(phoenixTable$ReviewCount)/336
avgReviewCountPittsburgh<- sum(pittsburghTable$ReviewCount)/228
avgReviewCountUrbana<- sum(urbanaTable$ReviewCount)/250

print(avgReviewCountCharlotte)
print(avgReviewCountCleveland)
print(avgReviewCountLasVegas)
print(avgReviewCountMadison)
print(avgReviewCountPhoenix)
print(avgReviewCountPittsburgh)
print(avgReviewCountUrbana)



resultDf<- data.frame(city=character(0),totalReviews=double(0))
resultDf[nrow(resultDf)+1,]<-c("Charlotte",avgReviewCountCharlotte)
resultDf[nrow(resultDf)+1,]<-c("Cleveland",avgReviewCountCleveland)
resultDf[nrow(resultDf)+1,]<-c("LasVegas",avgReviewCountLasVegas)
resultDf[nrow(resultDf)+1,]<-c("Madison",avgReviewCountMadison)
resultDf[nrow(resultDf)+1,]<-c("Phoenix",avgReviewCountPhoenix)
resultDf[nrow(resultDf)+1,]<-c("Pittsburgh",avgReviewCountPittsburgh)
resultDf[nrow(resultDf)+1]<-rbind("Urbana",avgReviewCountUrbana)
View(resultDf)

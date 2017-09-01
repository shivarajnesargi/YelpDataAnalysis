cityTable<-read.table(file.choose(),sep="\t")
cityDataframe<- data.frame(cityTable)
colnames(cityDataframe) <-c("City","Category","ReviewCount")
View(cityTable)
View(cityDataframe)


charlotteCity<- cityDataframe[1019:1609,]
clevelandCity<- cityDataframe[1610:2081,]
lasVegasCity<-cityDataframe[2082:2729,]
madisonCity<-cityDataframe[251:682,]
phoenixCity<-cityDataframe[683:1018,]
pittsburghCity<-cityDataframe[2730:2957,]
urbanaCity<-cityDataframe[1:250,]


avgReviewCharlotte<- sum(charlotteCity$ReviewCount)/591
avgReviewCleveland<- sum(clevelandCity$ReviewCount)/472
avgReviewLasVegas<- sum(lasVegasCity$ReviewCount)/648
avgReviewMadison<- sum(madisonCity$ReviewCount)/432
avgReviewPhoenix<- sum(phoenixCity$ReviewCount)/336
avgReviewPittsburgh<- sum(pittsburghCity$ReviewCount)/228
avgReviewUrbana<- sum(urbanaCity$ReviewCount)/250

print(avgReviewCountCharlotte)
print(avgReviewCountCleveland)
print(avgReviewCountLasVegas)
print(avgReviewCountMadison)
print(avgReviewCountPhoenix)
print(avgReviewCountPittsburgh)
print(avgReviewCountUrbana)


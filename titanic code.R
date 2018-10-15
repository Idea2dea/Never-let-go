View(titanic_original)
 titanic_original$embarked[is.na(titanic_original$embarked)] <- "S"

   #replacing NA with mean 
   titanic_original$age[which(is.na(titanic_original$age))] <-mean(titanic_original$age,na.rm = TRUE)
  #filling the blanks
   titanic_original$boat[which(is.na(titanic_original$boat))] <-"None"
   #creating new column
   titanic_original$has_cabin_number<- with(titanic_original, ifelse(cabin == "NA", 0, 1))
    titanic_original
write.table(titanic_original, file= "titanic_clean.csv", sep=",")

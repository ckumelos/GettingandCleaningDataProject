##read in data

Xtest<-read.table("~/UCI HAR Dataset/test/X_test.txt")
Xtrain<-read.table("~/UCI HAR Dataset/train/X_train.txt")
Ytest<-read.table("~/UCI HAR Dataset/test/y_test.txt")
Ytrain<-read.table("~/UCI HAR Dataset/train/y_train.txt")
Stest<-read.table("~/UCI HAR Dataset/test/subject_test.txt")
Strain<-read.table("~/UCI HAR Dataset/train/subject_train.txt")
actlab<-read.table("~/UCI HAR Dataset/activity_labels.txt")
faetures<-read.table("~/UCI HAR Dataset/features.txt")

##create one large dataset as in step one of the project

testbind<-cbind(Stest,Ytest,Xtest)
trainbind<-cbind(Strain,Ytrain,Xtrain)
dfone<-rbind(testbind,trainbind)

##Extracts only the measurements on the mean and standard deviation for each 
##measurement as in step 2 of project

grep1<-grep("mean\\(\\)|std\\(\\)",faetures$V2)
grep3<-grep1+2
dftwo<-dfone[,c(1,2,grep3)]

##Uses descriptive activity names to name the activities in the data set

colnames(dftwo)[2] <- 'Ycol'
translator_vector = c(A='WALKING',B='WALKING_UPSTAIRS',C='WALKING_DOWNSTAIRS',D='SITTING', E='STANDING',F='LAYING')
dftwovec = translator_vector[dftwo$Ycol]
dftwo$Ycol<-dftwovec

##Appropriately labels the data set with descriptive variable names.

col4<-gsub("-","", col1$V2)
col4<-gsub("_","", col4)
col4<-gsub("\\()","", col4)
col4<-c("subject","activity",col4)
colnames(dftwo)<-col4

##From the data set in step 4, creates a second, independent tidy 
##data set with the average of each variable for each activity and each subject.
##undoes part 3 of project and then redoes it as ddply wants only numerics

dftwo<-dfone[,c(1,2,grep3)]
colnames(dftwo)[2] <- 'Ycol'
colnames(dftwo)<-col4
tidydata1 <- ddply(dftwo, .(activity,subject), colMeans)
translator_vector = c(A='WALKING',B='WALKING_UPSTAIRS',C='WALKING_DOWNSTAIRS',D='SITTING', E='STANDING',F='LAYING')
tdvec = translator_vector[tidydata1$activity]
tidydata1$activity<-dftwovec

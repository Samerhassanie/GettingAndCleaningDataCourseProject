## Loading Relevant Packages
library(plyr)
library(dplyr)
library(tidyr)

## Reading the Feature names from the file features.txt
setwd("UCI HAR Dataset")
feature_names<-read.csv("features.txt",header=FALSE,sep="",colClasses="character")
feature_names<-select(feature_names,V2)

## Reading the test data and assigning descriptive variable names based on features.txt
setwd("test")
X_test<-read.csv("X_test.txt",sep="",colClasses="numeric",header=FALSE)
colnames(X_test)<-feature_names[,1]
y_test<-read.csv("y_test.txt",header=FALSE,colClasses="numeric")

## Reading the subject id's and assigning them to the respective observation
subjectname<-read.csv("subject_test.txt",header=FALSE,sep="",colClasses="character")
Xy_test<-cbind(Subjectid=subjectname[,1],Activity=y_test[,1],X_test)

## Removing intermediate variables
rm("X_test","y_test","subjectname")

## Assigning descriptive names to the activities
Xy_test$Activity<-factor(Xy_test$Activity,labels=c("WALKING","WALKING_UPSTAIRS",
                                                   "WALKING_DOWNSTAIRS","SITTING",
                                                   "STANDING","LAYING"))

## Reading the test Inertial Signals
setwd("Inertial Signals")
body_acc_x_test<-read.csv("body_acc_x_test.txt",header=FALSE,colClasses="numeric",sep="")
## Assigning descriptive names to each 128 signals of the variable body_acc_x
Names<-NULL
for(i in 1:128){Names[i]<-paste("body_acc_x_",i,sep="")}
colnames(body_acc_x_test)<-Names

body_acc_y_test<-read.csv("body_acc_y_test.txt",header=FALSE,colClasses="numeric",sep="")
## Assigning descriptive names to each 128 signals of the variable body_acc_y
for(i in 1:128){Names[i]<-paste("body_acc_y_",i,sep="")}
colnames(body_acc_y_test)<-Names

body_acc_z_test<-read.csv("body_acc_z_test.txt",header=FALSE,colClasses="numeric",sep="")
## Assigning descriptive names to each 128 signals of the variable body_acc_z
for(i in 1:128){Names[i]<-paste("body_acc_z_",i,sep="")}
colnames(body_acc_z_test)<-Names

body_gyro_x_test<-read.csv("body_gyro_x_test.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable body_gyro_x
for(i in 1:128){Names[i]<-paste("body_gyro_x_",i,sep="")}
colnames(body_gyro_x_test)<-Names

body_gyro_y_test<-read.csv("body_gyro_y_test.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable body_gyro_y
for(i in 1:128){Names[i]<-paste("body_gyro_y_",i,sep="")}
colnames(body_gyro_y_test)<-Names

body_gyro_z_test<-read.csv("body_gyro_z_test.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable body_gyro_z
for(i in 1:128){Names[i]<-paste("body_gyro_z_",i,sep="")}
colnames(body_gyro_z_test)<-Names

total_acc_x_test<-read.csv("total_acc_x_test.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable total_acc_x
for(i in 1:128){Names[i]<-paste("total_acc_x_",i,sep="")}
colnames(total_acc_x_test)<-Names

total_acc_y_test<-read.csv("total_acc_y_test.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable total_acc_y
for(i in 1:128){Names[i]<-paste("total_acc_y_",i,sep="")}
colnames(total_acc_y_test)<-Names

total_acc_z_test<-read.csv("total_acc_z_test.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable total_acc_z
for(i in 1:128){Names[i]<-paste("total_acc_z_",i,sep="")}
colnames(total_acc_z_test)<-Names

test_data<-cbind(Xy_test,body_acc_x_test,body_acc_y_test,body_acc_z_test,body_gyro_x_test,
                 body_gyro_y_test,body_gyro_z_test,total_acc_x_test,total_acc_y_test,
                 total_acc_z_test)

## Removing intermediate variables
rm("Xy_test","body_acc_x_test","body_acc_y_test","body_acc_z_test","body_gyro_x_test",
   "body_gyro_y_test","body_gyro_z_test","total_acc_x_test","total_acc_y_test",
   "total_acc_z_test","Names","i")

## Reading the train data and assigning descriptive variable names based on features.txt
setwd("..")
setwd("..")
setwd("train")
X_train<-read.csv("X_train.txt",sep="",colClasses="numeric",header=FALSE)
colnames(X_train)<-feature_names[,1]
y_train<-read.csv("y_train.txt",header=FALSE,colClasses="numeric")

## Reading the subject id's and assigning them to the respective observation
subjectname<-read.csv("subject_train.txt",header=FALSE,sep="",colClasses="character")
Xy_train<-cbind(Subjectid=subjectname[,1],Activity=y_train[,1],X_train)

## Removing intermediate variables
rm("X_train","y_train","subjectname","feature_names")

## Assigning descriptive names to the activities
Xy_train$Activity<-factor(Xy_train$Activity,labels=c("WALKING","WALKING_UPSTAIRS",
                                                     "WALKING_DOWNSTAIRS","SITTING",
                                                     "STANDING","LAYING"))
## Reading the train Inertial Signals
setwd("Inertial Signals")

body_acc_x_train<-read.csv("body_acc_x_train.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable body_acc_x
Names<-NULL
for(i in 1:128){Names[i]<-paste("body_acc_x_",i,sep="")}
colnames(body_acc_x_train)<-Names

body_acc_y_train<-read.csv("body_acc_y_train.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable body_acc_y
for(i in 1:128){Names[i]<-paste("body_acc_y_",i,sep="")}
colnames(body_acc_y_train)<-Names

body_acc_z_train<-read.csv("body_acc_z_train.txt",header=FALSE,colClasses="numeric",
                           sep="")
## Assigning descriptive names to each 128 signals of the variable body_acc_z
for(i in 1:128){Names[i]<-paste("body_acc_z_",i,sep="")}
colnames(body_acc_z_train)<-Names

body_gyro_x_train<-read.csv("body_gyro_x_train.txt",header=FALSE,colClasses="numeric",
                            sep="")
## Assigning descriptive names to each 128 signals of the variable body_gyro_x
for(i in 1:128){Names[i]<-paste("body_gyro_x_",i,sep="")}
colnames(body_gyro_x_train)<-Names

body_gyro_y_train<-read.csv("body_gyro_y_train.txt",header=FALSE,colClasses="numeric",
                            sep="")
## Assigning descriptive names to each 128 signals of the variable body_gyro_y
for(i in 1:128){Names[i]<-paste("body_gyro_y_",i,sep="")}
colnames(body_gyro_y_train)<-Names

body_gyro_z_train<-read.csv("body_gyro_z_train.txt",header=FALSE,colClasses="numeric",
                            sep="")
## Assigning descriptive names to each 128 signals of the variable body_gyro_z
for(i in 1:128){Names[i]<-paste("body_gyro_z_",i,sep="")}
colnames(body_gyro_z_train)<-Names

total_acc_x_train<-read.csv("total_acc_x_train.txt",header=FALSE,colClasses="numeric",
                            sep="")
## Assigning descriptive names to each 128 signals of the variable total_acc_x
for(i in 1:128){Names[i]<-paste("total_acc_x_",i,sep="")}
colnames(total_acc_x_train)<-Names

total_acc_y_train<-read.csv("total_acc_y_train.txt",header=FALSE,colClasses="numeric",
                            sep="")
## Assigning descriptive names to each 128 signals of the variable total_acc_y
for(i in 1:128){Names[i]<-paste("total_acc_y_",i,sep="")}
colnames(total_acc_y_train)<-Names

total_acc_z_train<-read.csv("total_acc_z_train.txt",header=FALSE,colClasses="numeric",
                            sep="")
## Assigning descriptive names to each 128 signals of the variable total_acc_z
for(i in 1:128){Names[i]<-paste("total_acc_z_",i,sep="")}
colnames(total_acc_z_train)<-Names

train_data<-cbind(Xy_train,body_acc_x_train,body_acc_y_train,body_acc_z_train,
                  body_gyro_x_train,body_gyro_y_train,body_gyro_z_train,total_acc_x_train,
                  total_acc_y_train,total_acc_z_train)

## Removing intermediate variables
rm("Xy_train","body_acc_x_train","body_acc_y_train","body_acc_z_train","body_gyro_x_train",
   "body_gyro_y_train","body_gyro_z_train","total_acc_x_train","total_acc_y_train",
   "total_acc_z_train","Names","i")

## Merging the test data and the train data
all_data<-rbind(test_data,train_data)

## Removing intermediate variables
rm("test_data","train_data")

## Selecting only the variables that are a mean() or std()
selected<-grep("mean|std",names(all_data))
selected_data<-all_data[,c(1,2,selected)]

## Removing intermediate variables
rm("selected")

## Creating a data set with the average of each variable for each activity and subject
tidy_data<-ddply(selected_data,.(Subjectid,Activity),numcolwise(mean))

## Reordering the factor levels in order to sort the data set later on
tidy_data$Subjectid<-factor(tidy_data$Subjectid,levels(tidy_data$Subjectid)[c(10,5,25,8,
                                      27:30,9,1,11,2:3,12:15,4,16,6,17:19,7,20:24,26)])
tidy_data$Activity<-factor(tidy_data$Activity,sort(levels(tidy_data$Activity)))

## Creating a long form of the data set by creating four columns one for the Subjectid
## one for the Activity, one for the measurement (ex. tBodyAcc-mean()-Y) and its corr-
## esponding value in a seperate column.
tidier_data<-gather(tidy_data,Measurement,Value,-Subjectid,-Activity)

## Sorting the data set
tidier_data<-arrange(tidier_data,Subjectid,Activity)
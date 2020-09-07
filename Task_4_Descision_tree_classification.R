# Import the Iris dataset
library(readxl)
Iris_Dt <- read_excel("GRIP/Iris_Dt.xlsx")
View(Iris_Dt)

#Lets associate iris_Dt data set to Iris_val
Iris_val<-Iris_Dt
Iris_val$Id<-NULL
View(Iris_val)
#Split the dataset into training and testing
split<- sample(150,100)
iris_train<-Iris_val[split, ]
iris_test<-Iris_val[-split, ]

#Lets make decision tree plots
library(rpart)
library(rpart.plot)
DT_Model<-rpart(Species~.,iris_train,method= "class" )
DT_Model
plot(DT_Model)
#To add text in to the model
text(DT_Model)
#To make a better effective and specific model
rpart.plot(DT_Model, type=4, extra=101)
#to run it against the test dataset
p<-predict(DT_Model,iris_test,type="class")
p


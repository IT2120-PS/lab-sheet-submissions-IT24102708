##  01)

getwd()
setwd("C:\\Users\\Desktop\\3rd Semester\\PS\\Practical\\Lab 08")
getwd()

data<- read.table("Data - Lab 8.txt",header=TRUE)
fix(data)
attach(data)

popmn <-mean(Nicotine)
popvar <-var(Nicotine)


##  02)

samples<-c()
n<-c()

for(i in 1:30) {
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means<-apply(samples,2,mean)
s.vars<-apply(samples,2,var)


##  03)

samplemean<-mean(s.means)
samplevars<-var(s.means)

print(samplemean)
print(samplevars)


##  04) 

print("Population Mean:")
print(popmn)

print("Mean of Sample Means:")
print(samplemean)


##  05)

true_var_relation <- popvar / 5
print("Population Variance / n (n=5):")
print(true_var_relation)

results_table <- data.frame(
  Sample = n,
  Mean = round(s.means, 4),
  Variance = round(s.vars, 4)
)

print("Sample Means and Variances:")
print(results_table)

summary_table <- data.frame(
  Quantity = c("Population Mean", "Population Variance", 
               "Mean of Sample Means", "Variance of Sample Means"),
  Value = c(round(popmn, 4), round(popvar, 4), 
            round(samplemean, 4), round(samplevars, 4))
)

print("Summary Table:")
print(summary_table)





##    Exercise 

laptop_data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
attach(laptop_data)


##  Question 01

popmn <- mean(Weight.kg.)
popsd <- sd(Weight.kg.)

print("Population Mean (Weight):")
print(popmn)

print("Population Standard Deviation (Weight):")
print(popsd)

##  Question 02 

samples <- c()
n <- c()

for(i in 1:25) {
  s <- sample(Weight.kg., 6, replace = TRUE)
  samples <- cbind(samples, s)
  n <- c(n, paste('S', i))
}

colnames(samples) <- n

s.means <- apply(samples, 2, mean)
s.sds <- apply(samples, 2, sd)

print("Sample Results:")
results_table <- data.frame(
  Sample = n,
  Mean = round(s.means, 4),
  SD = round(s.sds, 4)
)

print(results_table)


##  Question 03 

samplemean <- mean(s.means)
samplesd <- sd(s.means)

print("Mean of Sample Means:")
print(samplemean)

print("Standard Deviation of Sample Means:")
print(samplesd)


print("Relationships:")
print(paste("1. Population Mean (", round(popmn, 4), ") ≈ Mean of Sample Means (", round(samplemean, 4), ")"))
print(paste("2. Population SD/√n (", round(popsd/sqrt(6), 4), ") ≈ SD of Sample Means (", round(samplesd, 4), ")"))

# Read in the data
mydata <- read.csv("data/yrbss_demo.csv")

# Add height column to data frame
mydata$height_m <- sqrt( mydata$weight_kg / mydata$bmi)

# Create separate boys and girls data sets through subsetting
boys <- mydata[mydata$sex == "Male", ]
girls <- mydata[mydata$sex == "Female", ]

# Summarize each data set and find SD of BMI
summary(boys$bmi); sd(boys$bmi)
summary(girls$bmi); sd(girls$bmi)

# Create a boxplot by sex
boxplot(mydata$bmi ~ mydata$sex)

# Plot boys and girls bmi vs weight separately
plot(boys$bmi, boys$weight)
plot(girls$bmi, girls$weight)

# Are males or females more likely to be bullied in the past 12 months? Calculate the percentage bullied for each gender.
# Create separate datasets for bullied boys and bullied girls
bullied_boys <- 
  boys[boys$bullied_past_12mo == TRUE,]
nrow(bullied_boys)
bullied_boys_prct <- 
  nrow(bullied_boys) / nrow(boys) * 100
bullied_boys_prct

# alternative:
mean(boys$bullied_past_12mo, na.rm=TRUE)

bullied_girls <- 
  girls[girls$bullied_past_12mo == TRUE,]
nrow(bullied_girls)
bullied_girls_prct <- 
  nrow(bullied_girls) / nrow(girls) * 100
bullied_girls_prct

# alternative
mean(girls$bullied_past_12mo, na.rm=TRUE)


bullied_yes <- mydata[mydata$bullied_past_12mo == TRUE,]
bullied_no <- mydata[mydata$bullied_past_12mo == FALSE,]

# Not bullied students have higher proportion of smokers
summary(bullied_yes$smoked_ever)
summary(bullied_no$smoked_ever)

## 6 ctd, Does it vary by gender? Not really
summary(bullied_yes[bullied_yes$sex == "Male", "smoked_ever"])
summary(bullied_yes[bullied_yes$sex == "Female", "smoked_ever"])

summary(bullied_no[bullied_no$sex == "Male", "smoked_ever"])
summary(bullied_no[bullied_no$sex == "Female", "smoked_ever"])




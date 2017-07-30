#creating JsonDataPermanent for Predicted Speeds

library(tidyverse)


jasonData2 <- read_csv("FinalData.csv")
jasonData2Sum <- jasonData2 %>%
  group_by (Lat2Digits, Lon2Digits, Hour) %>%
  summarise (AverageCars = mean(AvgCars), AverageSpeedPercentage = mean (AvgSpeedPercentage))%>%
  ungroup()%>%
  rename(Lat = Lat2Digits, Lon = Lon2Digits)

jasonData2Sum <- add_column(jasonData2Sum, minus50 = as.double(0), "minus40" = as.double(0), 
                            minus30 = as.double(0), minus20 = as.double(0), minus10 = as.double(0), 
                            noChange = as.double(0), plus10 = as.double(0), plus20 = as.double(0), 
                            plus30 = as.double(0), plus40 = as.double(0), plus50 = as.double(0), 
                            plus60 = as.double(0), plus70 = as.double(0), 
                            plus80 = as.double(0), plus90 = as.double(0), plus100 = as.double(0), 
                            plus110 = as.double(0), plus120 = as.double(0), 
                            plus130 = as.double(0), plus140 = as.double(0), plus150 = as.double(0), 
                            plus160 = as.double(0), plus170 = as.double(0), 
                            plus180 = as.double(0), plus190 = as.double(0), plus200 = as.double(0))
jasonDataPermanent <- jasonData2Sum %>%
  filter(Hour == 8)
tempLat = 0.1
tempLon = 0.1

for (i in 1:nrow(jasonDataPermanent)){
  #see if same as before
  #i = 1
  if (tempLat == as.double(jasonDataPermanent[i,"Lat"]) & as.double(tempLon == jasonDataPermanent[i,"Lon"])){
    #if same then do nothing - use same model
    print("same")
  } else {
    print("else triggered")
    # else create new model
    # select relevant data
    tempData <- filter(jasonData2Sum, Lat == as.double(jasonDataPermanent[i,"Lat"]), Lon == as.double(jasonDataPermanent[i,"Lon"]))
    
    # build Linear model
    tempLm <- lm(AverageSpeedPercentage ~ AverageCars, data = tempData)
  }
  #predict values
  for (j in 6:ncol(jasonDataPermanent)) {
    jasonDataPermanent[i,j] <- predict(tempLm, jasonDataPermanent[i,"AverageCars"]*((j-11)*0.1 + 1))
  }
  #set Lon and Lat
  tempLat <- as.double(jasonDataPermanent[i,"Lat"])
  tempLon <- as.double(jasonDataPermanent[i,"Lon"])
}
write.csv(jasonDataPermanent, "jasonDataPermanent3.csv")

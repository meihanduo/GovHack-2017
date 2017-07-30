# GovHack 2017 - The BEST (Best Estimate of Sydney Traffic) Team

**[BEST](https://sluk.shinyapps.io/BEST/) (Best Estimate of Sydney Traffic) is a visualisation tool that shows changes in the speed of traffic through key areas of Sydney, as the volume of traffic through those areas varies.** 

**Our analysis of the problem**
We used the NSW Roads Traffic Volume Counts API to confirm our hypothesis that the number of vehicles driving in Sydney has been increasing in recent years. We then investigated population and employment trends and found several sources projecting increases in Sydney’s population and the number of people working in the Sydney CBD. This told us it was necessary to understand the implications of changing on-road vehicle numbers on overall congestion. Throughout our analysis, we used the ratio of average vehicle travel speed to the legal speed limit as a proxy for congestion.

**What we built**
We built BEST, a data model that visualises congestion in Sydney. In this model, the user – transport and infrastructure planners and policy makers – can see how different levels of change in traffic (measured as % increase in vehicles) would affect Sydney’s morning peak hour traffic. This information is visualised on a map of Sydney, with each circle representing an area of Sydney, and the colour representing the level of congestion. Red represents high congestion and green represents low congestion.

**Why would someone want to use this?**
Interventions to reduce traffic volume may focus on increasing the number or size of roads, or decreasing the number of cars on the road. This then affects the speed at which traffic moves. Our tool visualises the interaction between traffic volume and traffic speed. This will help Transport for NSW better understand areas affected by road congestion. It will allow policymakers to understand the implications of proposed interventions by determining if the speed of traffic would be affected, and if so, by how much.

**Our next steps**
Our model serves as a proof of concept of a visual model for representing roads in Sydney. We originally hoped to model at the level of individual intersections, but this was not possible with the available data. With further support and collaboration, we can build a more granular and accurate model that will allow us to identify roads most at risk of overcrowding and congestion, and allow government to proactively plan infrastructure and educate the public.

## Technical information

This repository contains:

  * Employment projections by travel zone

  * Population projections by travel zone

  * Rstudio code for trend growth predictions

  * Tableau workbook packages containing traffic and congestion visualisations  

**Technologies used:**

  * Tableau 10.3

  * RStudio
  
  * Microsoft Visual Studio Community Edition 2017
  
  * Shinyapps.io

**Datasets and other relevant information used:**

  * [ABS: Data by Region](http://stat.abs.gov.au/itt/r.jsp?databyregion#/)
  
  * [HERE: Batch Geocoder API](https://developer.here.com/rest-apis/documentation/batch-geocoder/topics/request-submit.html)
  
  * [NSW Roads and Maritime Services: Traffic Volume Viewer](http://www.rms.nsw.gov.au/about/corporate-publications/statistics/traffic-volumes/aadt-map/index.html#/?z=5)

  * [Transport for NSW: Employment Projections from Travel Zone Projection 2016 (TZP2016) model](https://opendata.transport.nsw.gov.au/dataset/employment-projections)
  
  * [Transport for NSW: Land Use Planner - Employment](https://www.transport.nsw.gov.au/performance-and-analytics/forecasts-and-projections/employment/land-use-planner-employment)
    
  * [Transport for NSW: Opal Tap On and Tap Off data](https://opendata.transport.nsw.gov.au/dataset/opal-tap-on-and-tap-off)

  * [Transport for NSW: Roads Realtime (TTDS)](https://opendata.transport.nsw.gov.au/dataset/roads-realtime)

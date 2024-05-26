# Esercitazione 2
setwd("~/Desktop/Università/Magistrale/Coding")
library(readxl)
fao <- read_excel("fao.xlsx")

vet1<- c(fao$Element, fao$Item, fao$Value)
vet2<- c(2006, 3, 2010, 5, 2015, 5, 2020)
fao.world<- fao[fao$Area == "World", c("Element", "Item", "Value")]
fao.world<- fao.world[fao.world$Element != "Export Quantity", ]
fao.world<- fao.world[fao.world$Element != "Import Quantity", ]
food<- fao.world[fao.world$Element == "Food", ]
col.value<- food$Value
typeof(col.value)
is.vector(col.value)
sum_col.value<- sum(col.value)
print(paste("Human food", sum_col.value, "x1000 tonnes"))
food    
arg.max<- which.max(food$Value)
posizione<- arg.max[which.max(arg.max)]
posizione
cibo_più_consumato<- food[2, "Item"]
print(paste("Most consumed human food:", cibo_più_consumato))
feed<- fao.world[fao.world$Element == "Feed", ]
col.value1<- feed$Value
sum_col.value1<- col.value1
arg.max1<- which.max(feed$Value)
posizione1<- arg.max1[which.max(arg.max1)]
foraggio_più_consumato<- feed[3, "Item"]
print(paste("Most consumed animal feed:", foraggio_più_consumato))
fsk<- fao.world$Element != "Food" & fao.world$Element != "Feed"
altri<- fao.world[fsk, ]
print(paste("Other uses", sum(altri$Value), "x1000 tonnes"))
a=5L
b=5
c="5"
typeof(a)
typeof(b)
typeof(c)

install.packages("networkD3")

library(networkD3)
library(ggplot2)
library(dplyr)


library(readxl)
wheat_trade <- read_excel("wheat_trade.xlsx")

dependencies<- wheat_trade[wheat_trade$Source == "Ukraine", ]
compute.perc<- function(value,tot){
  percentuale<- (value/tot)*100
  return(round(percentuale, 2))
}

dependencies = dependencies %>% rowwise() %>%
  mutate(Percentage=compute.perc(Trade.Value, Tot.imports))










#Arbeitsverzeichnis setzen
setwd("/Users/hannes/Desktop/R Kurs/block_2")
HairEyeData<-readRDS("2_HairEyeData.rds")
library(ggplot2)
----------------------------------------------------------
#Balkendiagramm erstellen und Legende
ggplot(data = HairEyeData, aes(x=Sex,fill=Sex)) +
  #Rahmenfarbe zuordnen
  geom_bar(color="black") +
  #Einzelne Farben den Balen zuordnen
  scale_fill_manual(values = c("#FF6666","#CCFF66"))+
  #Achsenbeschriftung und Überschrift umbennen
  labs(y="Anzahl",
       x="Geschlecht",
       title="Häufigkeitstabelle")
----------------------------------------------------------

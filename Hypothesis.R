#A variety of pathogenic bacteria that develop single mutations to resist increasing concentrations of multiple antibiotics will have a lower relative doubling number in set unit time, as a result of fitness cost. 
setwd('~/Desktop/Evolution/Final_Project')
Data <- read.csv('~/Desktop/Evolution/Final_Project/costR.csv', 
	stringsAsFactors=F)

colnames(Data)
head(Data)
?plot
Fitness <- Data[,12]
Fitness
Resistance <- Data[,9]
Resistance

pdf('rFinal_Project.pdf', height = 5, width = 5)
Plot <- plot(Fitness, Resistance, log='y', xlab='Relative Fitness', ylab='Antibiotic Resistance (MIC)', main= 'Fitness Relative to Levels of Antibiotic Resistance in Bacteria')
dev.off()
#My plot shows a negative correlation between fitness and antibiotic resistance. The more resistant a bacteria is, it is more likely to fall below 1 in terms of fitness, indicative of fitness cost. Those above 1 have a higher fitness, and those with low resistance are more likely to be present in this area. 

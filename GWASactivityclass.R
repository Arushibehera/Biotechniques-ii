#Phenotypic data 
Pheno<-read.table(file = "http://zzlab.net/GAPIT/data/mdp_traits.txt", header = TRUE)
View(myY)
#genotypic data 
GD<-read.table(file = "http://zzlab.net/GAPIT/data/mdp_numeric.txt", header = TRUE)
head(GD)[ ,c(1:10)]
GM<-read.table(file = "http://zzlab.net/GAPIT/data/mdp_SNP_information.txt", header = TRUE)
head(GM)

#association 
activityGAPIT=GAPIT(
  Y=Pheno[,c(1,4)],
  GD=GD,
  GM=GM,
  PCA.total=3,
  model=c("MLM"))

#main results
View(activityGAPIT$GWAS)

library(qqman)
library(ggplot2)

activityresults<-read.csv("GAPIT.Association.GWAS_Results.MLM.EarDia.csv", header = T)
head(activityresults)

manhattan(activityresults, main="Ear Diameter", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA03188.4"  )

png("customizedactivity_manhattan_plot.png", width = 8, height = 4, units = "in", res = 300 )

manhattan(activityresults, main="Ear Diameter", chr = "Chr", bp = "Pos", p = "P.value", snp = "SNP",           
          col = c("blue", "orange"),           
          genomewideline = 3.5,  highlight = "PZA03188.4"  )

dev.off()


### Rarefaction curves 

### Packages 
library(iNEXT)
library(ggplot2)
library(ggthemes)

## Plant species  

### Dune 
dunap<-read.csv("Dunaplant.csv",  header=F)
dunap <- as.list(dunap) 
dunap
outp <- iNEXT(dunap$V1, q=c(0), datatype="abundance", endpoint=2000,nboot = 100)
outp

### Figure 
gp <- ggiNEXT(outp, type=1, color.var="site")
gp

g1 <- gp + theme_tufte(base_size = 15) + 
  scale_fill_grey(start = 0, end = .4) +
  scale_colour_grey(start = .2, end = 2000) +
  theme_classic()+ labs(x= "Number of individuals", y= "Species diversity (H q=0)")
g1

### Shrub 
matop<-read.csv("Matoplant.csv",  header=F)
matop <- as.list(matop) 
matop
outma <- iNEXT(matop$V1, q=c(0), datatype="abundance", endpoint=2000,nboot = 500)
outma

### Figure 
gp1 <- ggiNEXT(outma, type=1, color.var="site")
gp1

g2 <- gp1 + theme_tufte(base_size = 15) + 
  scale_fill_grey(start = 0, end = .4) +
  scale_colour_grey(start = .2, end = 2000) +
  theme_classic()+ labs(x= "Number of individuals", y= "Species diversity (H q=0)")
g2

##Insect species
###Dune 

dunaIn<-read.csv("dunaIn.csv",  header=F)
dunaIn <- as.list(dunaIn) 
dunaIn
View(dunaIn)
outdIn <- iNEXT(dunaIn$V1, q=c(0), datatype="abundance", endpoint=2000,nboot = 500)
outdIn

## Figure  
gd <- ggiNEXT(outdIn, type=1, color.var="site")
gd

g10 <- gd + theme_tufte(base_size = 15) + 
  scale_fill_grey(start = 0, end = .4) +
  scale_colour_grey(start = .2, end = 2000) +
  theme_classic()+ labs(x= "Number of individuals", y= "Species diversity (H q=0)")
g10

### Shrub

matoIn<-read.csv("matoIn.csv",  header=F)
matoIn <- as.list(matoIn) 
matoIn
View(matoIn)
outmIn <- iNEXT(matoIn$V1, q=c(0), datatype="abundance", endpoint=2000,nboot = 500)
outmIn

## Figure 
gm <- ggiNEXT(outmIn, type=1, color.var="site")
gm

g10 <- gm + theme_tufte(base_size = 15) + 
  scale_fill_grey(start = 0, end = .4) +
  scale_colour_grey(start = .2, end = 2000) +
  theme_classic()+ labs(x= "Number of individuals", y= "Species diversity (H q=0)")
g10

###plant–pollinator richness interactions

## Dune
dunaII<-read.csv("dunaZ.csv",  header=F)
dunaII <- as.list(dunaII) 
dunaII
out <- iNEXT(dunaII$V1, q=c(0), datatype="abundance", endpoint= 6000,nboot = 500)
out

###Figure 
g <- ggiNEXT(out, type=1, color.var="site")
g

g10 <- g + theme_tufte(base_size = 15) +       
  scale_fill_grey(start = 0, end = .4) +
  scale_colour_grey(start = .2, end = 7000) +
  theme_classic()+ labs(x= "Number of interactions", y= "Interactions diversity (H q=0)")
g10


### Shrub  
matoII<-read.csv("MatoZ.csv",  header=F)
matoII <- as.list(matoII) 
matoII
outm <- iNEXT(matoII$V1, q=c(0), datatype="abundance", endpoint=7000,nboot = 500)
outm
g3 <- ggiNEXT(outm, type=1, color.var="site")
g3

g4 <- g3 + theme_tufte(base_size = 15) +       
  scale_fill_grey(start = 0, end = .4) +
  scale_colour_grey(start = .2, end = 7000) +
  theme_classic()+ labs(x= "Number of interactions", y= "Interactions diversity (H q=0)")
g4

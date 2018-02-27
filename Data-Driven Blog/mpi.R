#Author: Rushabh Jhaveri

#Load key libraries. 
library("ggplot2")
library("dplyr")
library("RColorBrewer")
library("ggthemes")
library("gridExtra")
library("ggrepel")

#Load the data 
mpi <- read.csv("C:/Users/Rushabh/Downloads/MPI_national.csv")

#Countries by MPI Urban
mpi %>%
  select(Country, MPI.Urban) %>%
  ggplot(aes(x = reorder(Country, MPI.Urban), y = MPI.Urban, fill = MPI.Urban)) + 
  geom_bar(stat ='identity') + 
  coord_flip() +
  theme_fivethirtyeight() + 
  theme(legend.position ='none', axis.text.x = element_text(size = 5,angle = 90)) +
  scale_fill_gradientn(name = '',colours = rev(brewer.pal(10,'Spectral'))) + 
  ggtitle('Countries by MPI Urban')

#Countries by MPI Rural
mpi %>%
  select(Country, MPI.Rural) %>% 
  ggplot(aes(x=reorder(Country, MPI.Rural), y = MPI.Rural, fill = MPI.Rural)) + 
  geom_bar(stat='identity') + 
  coord_flip() +
  theme_fivethirtyeight() + 
  theme(legend.position='none', axis.text.x = element_text(size=5,angle=90)) +
  scale_fill_gradientn(name='',colours=rev(brewer.pal(10,'Spectral'))) + 
  ggtitle('Countries by MPI Rural')

#Countries by Intensity of Deprivation Urban
mpi %>%
  select(Country, Intensity.of.Deprivation.Urban) %>%
  ggplot(aes(x = reorder(Country, Intensity.of.Deprivation.Urban), y = Intensity.of.Deprivation.Urban, fill = Intensity.of.Deprivation.Urban)) + 
  geom_bar(stat ='identity') + 
  coord_flip() +
  theme_fivethirtyeight() + 
  theme(legend.position ='none', axis.text.x = element_text(size = 5,angle = 90)) +
  scale_fill_gradientn(name = '',colours = rev(brewer.pal(10,'Spectral'))) + 
  ggtitle('Countries by Intensity of Deprivation Urban')

#Countries by Intensity of Deprivation Rural
mpi %>%
  select(Country, Intensity.of.Deprivation.Rural) %>%
  ggplot(aes(x = reorder(Country, Intensity.of.Deprivation.Rural), y = Intensity.of.Deprivation.Rural, fill = Intensity.of.Deprivation.Rural)) + 
  geom_bar(stat ='identity') + 
  coord_flip() +
  theme_fivethirtyeight() + 
  theme(legend.position ='none', axis.text.x = element_text(size = 1,angle = 90)) +
  scale_fill_gradientn(name = '',colours = rev(brewer.pal(10,'Spectral'))) + 
  ggtitle('Countries by Intensity of Deprivation Rural')

#Z-Test
mpi.urban <-mpi$MPI.Urban
mpi.rural <- mpi$MPI.Rural
mean.urban <- mean(mpi.urban)
mean.rural <- mean(mpi.rural)
sd.urban <- sd(mpi.urban)
sd.rural <- sd(mpi.rural)
len.urban <- length(mpi.urban)
len.rural <- length(mpi.rural)
sd.urban.rural <- sqrt(sd.urban^2/len.urban + sd.rural^2/len.rural)
zeta <- (mean.urban - mean.rural)/sd.urban.rural
#zeta = -6.203564
plot(x=seq(from = -5, to= 5, by=0.1),y=dnorm(seq(from = -5, to= 5,  by=0.1),mean=0),type='l',xlab = 'mean difference',  ylab='possibility')
abline(v=zeta, col='red')
p <- 1-pnorm(zeta)
#p = 1?????


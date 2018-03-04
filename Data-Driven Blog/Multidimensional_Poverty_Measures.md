
__“Poverty is not just a lack of money, it is not having the capability to realize one’s full potential as a human being.” ~ Amartya Sen__

Hello, my name is Rushabh Jhaveri, and I’m a sophomore majoring in Computer Science and Math. 
Poverty is something that doesn’t afflict a particular country or region, it’s a characteristic prevalent on every continent and every country on Earth.  

While most countries define poverty in monetary terms, one singular factor [such as low income] certainly does not capture the true reality of poverty. Poverty is multifaceted, and many different factors contribute to poverty. 
This is where the Multidimensional Poverty Index [MPI] proves useful. The MPI can be used to create a more comprehensive picture of poverty worldwide. The MPI not only reveals which countries / regions are poor, but also how they are poor. 
This analysis aims to answer several questions, including what countries display the widest subnational disparities in MPIs, and which countries have high per-capita income, yet rank high in the MPI. 
It also aims to analyze the intensity of deprivation for countries in the index.  

### Why should I care about this data? ###
Sure, poverty is widely acknowledged, but the most prevalent opinion is that poverty is an [extreme] lack of money, and that is an inaccurate opinion. 
The main aim of this blog, if anything, is to spread awareness on how multifaceted and significant poverty is. 
The boxplot below depicts the world regions, and the national poverty levels of the countries within these regions. 
As we can see, poverty is significant in every world region, with Sub-Saharan Africa, the Arab States, and South Asia having the most rampant poverty levels according to the MPI. 
The takeaway here is clear - poverty is something that afflicts every country in every region on Earth, and the only way we can tackle poverty is by drawing attention to it. 
Simply acknowledging that exists doesn’t cut it anymore. 
This plot aims to raise eyebrows and hopefully inspire action, and hopefully, change.  

![picture alt](https://github.com/rushabhjhaveri/Rutgers-Data101/blob/master/Data-Driven%20Blog/Plots/boxplotworld.jpeg) 

### An Analysis of Rural and Urban MPI Data ### 
Do countries have different scores on the index for urban areas like cities, versus rural areas? 
Turns out the answer is yes. 
As in heat maps, the redder a bar graph for a country, the more poverty is deeply rooted in the urban / rural regions of that country. 
As we can see, rural regions are generally worse off than urban regions, and have more poverty than urban regions.  

![picture alt](https://github.com/rushabhjhaveri/Rutgers-Data101/blob/master/Data-Driven%20Blog/Plots/mpiurbantabled.JPG)  

However, while we can visually see this, it’s always nice to have the data backed up by numbers. 
Thus, we perform the Z-Test. 
Let our null-hypothesis be that there is no difference in the means of the urban and rural data in the MPI. 
On running the Z-Test, we obtain a p-value of 2.2*10-16. The p-value is very close to zero, which indicates very strong evidence against the null hypothesis. 
Thus, we conclude that there is a statistically significant difference in the means of MPI urban and rural. 

### An Analysis of Intensity of Deprivation ### 
![picture alt](https://github.com/rushabhjhaveri/Rutgers-Data101/blob/master/Data-Driven%20Blog/Plots/intensitytabled.JPG) 

Intensity of Deprivation is a multidimensional poverty attribute that measures how hard those stricken by poverty are deprived in terms of basic needs, resources, and welfare. 
Again, we use numbers to back our data. 
Let our null hypothesis be that there is no difference in the means of intensity of deprivation. 
On performing the Z-Test, we get a p-value of less than 2.2*10-16. 
This indicates strong evidence against the null hypothesis, which means that there is a statistically significant difference in the means of intensity of deprivation in rural and urban regions. 

### What Do These Analyses Tell Us? ### 
The analyses performed above tell us several things. 
First, there is a significant disparity between the rural and urban populations. 
This means that the rural folk, who are usually the core contributors to the agriculture, and thereby make up the base of the economy of a country, are not only engulfed in poverty, but also being neglected, and being given lower priority than their urban counterparts. 
This needs to be addressed. 
Second, regardless of whether we look at urban or rural regions, we see that poverty is present everywhere. 
We can attribute [slightly] lower poverty in urban regions and higher intensity of deprivation in rural regions because: 
* In urban regions, it is more likely that one may receive some form of sustenance [money, food, etc.] from kind strangers / passerbys. 
* It is more likely that government legislation to reduce poverty will be targeted towards urban regions, because urban regions are considered economic strongholds, and display all that a country has to offer, and since urban regions are usually main tourist attractions. 

### Conclusion ### 
As we can see, poverty is not just a lack of money. 
It is complex, multifaceted, and multidimensional. 
We can see that the world is plagued with poverty, and with statistically backed data, we have proven that there is a statistically significant difference between both poverty levels and intensity of deprivation in rural and urban regions.
However, there are some places where poignant questions can be asked. 
For example, most of the countries are concentrated in the East Europe-Asia-Africa axis. Countries like the USA, and western European countries are not featured in this data set, which begs the question, is this data skewed? 
Also, how does this affect factors like intensity of deprivation, or the poverty index rankings themselves? 
In conclusion, I’d like to end with this plot of the world regions, just as a reminder of how stark and omnipresent poverty is, and hopefully, inspire change.  

![picture alt](https://github.com/rushabhjhaveri/Rutgers-Data101/blob/master/Data-Driven%20Blog/Plots/worldreganalysis.jpeg) 

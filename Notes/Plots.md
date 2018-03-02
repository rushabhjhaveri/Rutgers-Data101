## Boxplot ## 
Only works on __numerical__ columns, throws error otherwise.   
We refer to a particular column in a dataframe using the __$__ operator. 
```
 #Basic boxplot command
 boxplot(student_performance$SCORE)
```

This gives the boxplot a title:   
```
boxplot(student_performance$SCORE, main='My first Boxplot')
```

This labels the axes of the boxplot:  
```
 #To give the Y axis a label we use the 'ylab' parameter. X axis can be named using 'xlab' parameter
 boxplot(student_performance$SCORE, main='My first Boxplot', ylab='Score')
```

To change the text size of the plot title and the axes labels, use the __cex__ argument.   
Setting cex.main=2 doubles the size of the title and setting cex.main=0.5 reduces the text size by half. Similary for the axis labels. 
```
 boxplot(student_performance$SCORE, main='My first Boxplot', ylab='Score', cex.main=2,cex.lab=1.5)
```

To compare the distribution of a numeric variable for different groups 

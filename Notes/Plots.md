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

To compare the distribution of a numeric variable for different groups formed by a categorical variables using boxplots, then use the __~__ operator. 

The column on the right side of the ~ operator can be of any type(character, numeric, logical, etc.), but the column on the left has to be a numerical column.  

```
 boxplot(student_performance$SCORE ~ student_performance$GRADE)
```
If you pass the data frame as an argument to the boxplot function using the 'data=' parameter, you don't have to type in the fully qualified column names (Just in case you have something against the '$' operator).  

```
 boxplot(SCORE ~ GRADE, data=student_performance)
```

Sometimes,  it is more intuitive to plot horizontal boxplots rather than vertical ones. This can be done using the argument 'horizontal = TRUE'.  

```
 boxplot(student_performance$SCORE ~ student_performance$GRADE, horizontal = TRUE)
```

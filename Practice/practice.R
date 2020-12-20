'''{r}
getwd()
demo_table <- read.csv(file='../Bootcamp/Week15_R/R_Statistical_Analysis/Practice/Resources/demo.csv',check.names=F,stringsAsFactors = F)
'''

'''{r}
demo_table2 <- read.csv(file='../Bootcamp/Week15_R/R_Statistical_Analysis/Practice/Resources/demo2.csv',check.names=F,stringsAsFactors = F)

'''

'''{r}
head(mpg)
plt <- ggplot(mpg,aes(x=class)) #import dataset into ggplot2
plt + geom_bar() #plot a bar plot
'''

'''{r}
mpg_summary <- mpg %>% group_by(manufacturer) %>% summarize(Vehicle_Count=n(), .groups = 'keep') #create summary table
plt <- ggplot(mpg_summary,aes(x=manufacturer,y=Vehicle_Count)) #import dataset into ggplot2
plt + geom_col() #plot a bar plot
'''

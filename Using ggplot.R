#In the chunk below, you will use the `read_csv()` function to import data from a .csv in the project folder called "hotel_bookings.csv" 
#and save it as a data frame called `hotel_bookings

hotel_bookings <- read.csv("hotel_bookings.csv")

#Look at a sample of your data

#I will be using the `head()` function to preview your data: 

head(hotel_bookings)
#To check column names we use
colnames(hotel_bookings)

#Installing and loading the 'ggplot2' package

install.packages("ggplot2")
library(ggplot2)

#A stakeholder tells you, "I want to target people who book early, 
# and I have a hypothesis that people with children have to book in advance."

#When you start to explore the data, it doesn't show what you would expect. 
#That is why you decide to create a visualization to see how true that statement is-- or isn't.

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = lead_time, y = children))

# The geom_point() function uses points to create a scatterplot. 
# Scatterplots are useful for showing the relationship between two numeric variables. 
# In this case, the code maps the variable 'lead_time' to the x-axis and the variable 'children' to the y-axis. 

# On the x-axis, the plot shows how far in advance a booking is made, with the bookings furthest to the right happening the most in advance. 
# On the y-axis it shows how many children there are in a party.
# The plot reveals that your stakeholder's hypothesis is incorrect. 
# I report back to your stakeholder that many of the advanced bookings are being made by people with 0 children.

#Next, your stakeholder says that she wants to increase weekend bookings, an important source of revenue for the hotel.
#Your stakeholder wants to know what group of guests book the most weekend nights in order to target that group in a new marketing campaign. 
#She suggests that guests without children book the most weekend nights. Is this true? 

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights , y = children))
  
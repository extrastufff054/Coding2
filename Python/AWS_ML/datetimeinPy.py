#Working with datetime -> A datetime module in Python can be used to work with date objects
import datetime

x=datetime.datetime.now() #This creates a new 'datetime' obejct called 'x' that represent the current date and time

print(x)     
print(x.year)    #This prints the year of the current date and time
#strftime() method is used to create a formatted string from a given date or time object
print(x.strftime("%A")) #This prints the day of the week 
print(x.strftime("%B")) #This prints the month 
print(x.strftime("%d")) #This prints the day as a zero-padded decimal number
print(x.strftime("%H:%M:%S %p"))    #This prints the time of the day in 24 hour format with the hour, minute, and second separated by colons followed by AM or PM
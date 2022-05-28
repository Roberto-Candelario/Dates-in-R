# Working with Dates

# Easiest way to create a date 
xd <- as.Date("2016-08-05")
xd
str(xd)

# How to find out what day of the week it is
weekdays(xd)

# How to add days to a date
xd + 7

# How to create a vector with multiple days 
xd + 0:6 # This created a vector of the next 6 days 

# How to create a vector of the day of week 
weekdays(xd + 0:6)

# How to use seq() with dates
  # How to create a vector of dates with every other month
startDate <- as.Date("2016-01-01")
xm <- seq(startDate, by= "2 months", length.out= 6)
xm

# How to report months from xm sequence
months(xm)

# How to report quarters from xm sequence 
quarters(xm)




# Presenting dates in different formats
as.Date("5 Aug 2016", format = "%d %b %Y") # format allows the date to be entered in differently 
?strptime # This will bring up more information on dates

# Adding time information to dates

# Apollo moon landing 
apollo <- "July 20, 1969, 20:17:39" # This is the date and time
apollo.fmt <- "%B %d, %Y, %H:%M:%S" # This is the format the date/time is in 
xct <- as.POSIXct(apollo, format= apollo.fmt, tz= "UTC") # This is the date object
xct # This is calling the object to see what it holds


# Formatting Dates and Times
# Reformatting Apollo moon landing date
format(xct, "%d/%m/%y")

# Format into a sentance
format(xct, "%M, minutes past %I %p, on %d %B %Y")


# Performing operations on dates and times

# Add  7 days to the apollo moon landing 
xct + 7*86400

# Add 3 hours to the apollo moon landing
xct + 3*60*60

# Subtract 7 days to apollo moon landing
xct - 7*86400

# lt and ct add or subtract dates in seconds
# as.Date objects add or subtract dates in days 

as.Date(xct) - 7


# Comparing dates
# Get current date and time
Sys.time()

#Compare now vs apollo moon landing 
Sys.time() < xct


# Compare the start of several decades to the moon landing date
dec.start <- as.POSIXct("1950-01-01")
dec <- seq(dec.start, by= "10 years", length.out= 4)
dec

#Compare the new vectors with moon landing date
dec > xct

# Extraction
# Posixlt allows for dates to be more flexable 
xlt <- as.POSIXlt(xct)
xlt

# using the $ operator to extract the different components
# extracting the year 
xlt$year 

# extracting the month
xlt$mon










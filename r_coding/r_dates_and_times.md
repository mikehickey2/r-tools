R developed a special representation of dates and times

- Dates are represented y the `Date` class
- Dates are stored internally as the number of day since 1970-01-01
- Times are represented by the `POSIXct` or the `POSIXlt` class
- Times are stored as the number of seconds since 1970-01-01
- Operations on dates and times keep track o tricky things lie leap years leap seconds, daylight savings, and time zones

`as.POSIXct()`
POSIXct is just a very. large integer under the hood; it is useful when you want to store times in a `.df`

`as.POSIXlt()`
POSIXlt is a list underneath the hood that stores a bunch of useful information like the day of the week, day of the year, day of the month etc.  There are a number of generic functions that work on dates and times stored as POSIXlt()
`weekdays()`
`month()`
`quarters()`



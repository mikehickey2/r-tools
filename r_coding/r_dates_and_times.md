# R Dates and Times

[[r_coding|← Back to R Coding Reference]]

R has special classes for handling dates and times that automatically manage complexities like leap years, leap seconds, daylight savings, and time zones.

## Table of Contents

- [Date Class](#date-class)
- [Time Classes](#time-classes)
- [Date/Time Functions](#datetime-functions)

---

## Date Class

Dates are represented by the `Date` class and stored internally as the number of days since 1970-01-01.

| Function | Description |
|----------|-------------|
| `as.Date()` | Convert a string or number to a Date object |

---

## Time Classes

Times are stored as the number of seconds since 1970-01-01 and come in two formats:

### POSIXct

A large integer under the hood. Best for storing times in data frames because it's a single value.

| Function | Description |
|----------|-------------|
| `as.POSIXct()` | Convert to POSIXct format |
| `Sys.time()` | Get current system time as POSIXct |

### POSIXlt

A list that stores date-time components separately (year, month, day, hour, etc.). Useful when you need to extract individual components.

| Function | Description |
|----------|-------------|
| `as.POSIXlt()` | Convert to POSIXlt format |
| `strptime()` | Parse a string into POSIXlt using a format specification |

---

## Date/Time Functions

These functions work with both Date and POSIXt objects:

| Function | Description |
|----------|-------------|
| `weekdays()` | Extract the day of the week |
| `months()` | Extract the month name |
| `quarters()` | Extract the quarter of the year (Q1, Q2, Q3, Q4) |

---

## See Also

- [[r_commands_qref#Dates and Times|Dates and Times Quick Reference]] - Complete function list

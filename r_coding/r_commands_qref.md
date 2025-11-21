# R Commands Quick Reference

[[r_coding|← Back to R Coding Reference]]

## Table of Contents

- [Operators](#operators)
- [Subset Operators](#subset-operators)
- [Statistics Functions](#statistics-functions)
- [File Handling](#file-handling)
- [Data Handling](#data-handling)
- [Debugging](#debugging)
- [Logical Functions](#logical-functions)
- [Control Structures](#control-structures)
- [Loop Functions](#loop-functions)
- [Sequence Helpers](#sequence-helpers)
- [Type Checking](#type-checking)
- [External Connections](#external-connections)
- [Useful Packages](#useful-packages)
- [Optimization](#optimization)
- [Dates and Times](#dates-and-times)
- [Error Handling](#error-handling)
- [Random Numbers](#random-numbers)
- [Profiling](#profiling)

---

## Operators

| Operator | Description |
|----------|-------------|
| `<-` | Assignment operator for creating variables |
| `<<-` | Super assignment - assigns to a variable in a parent environment |
| `=` | Assignment used inside function arguments |
| `#` | Comment - everything after is ignored |
| `?` | Get help documentation for a function |
| `::` | Call a function from a specific package explicitly |

### Logical Operators

| Operator | Description |
|----------|-------------|
| `!` | NOT - negates a logical value |
| `&` | AND - vectorized, compares element by element |
| `&&` | AND - not vectorized, only compares first elements |
| `\|` | OR - vectorized, compares element by element |
| `\|\|` | OR - not vectorized, only compares first elements |

### Comparison Operators

| Operator | Description |
|----------|-------------|
| `==` | Equal to |
| `!=` | Not equal to |
| `<` | Less than |
| `>` | Greater than |
| `<=` | Less than or equal to |
| `>=` | Greater than or equal to |
| `%%` | Modulus - returns the remainder of division |

---

## Subset Operators

| Operator | Description |
|----------|-------------|
| `[` | Extracts elements, always returns same class as original |
| `[[` | Extracts a single element from list or data frame, may return different class |
| `$` | Extracts element by name from list or data frame |

---

## Statistics Functions

| Function | Description |
|----------|-------------|
| `mean()` | Calculate the arithmetic mean |
| `median()` | Find the middle value |
| `sd()` | Calculate standard deviation |
| `var()` | Calculate variance |
| `sum()` | Add up all values |
| `cor()` | Calculate correlation between variables |
| `cov()` | Calculate covariance between variables |
| `lm()` | Fit a linear regression model |
| `summary()` | Get summary statistics or model summaries |
| `floor()` | Round down to nearest integer |
| `rowSums()` | Sum values across each row |
| `rowMeans()` | Average values across each row |
| `colSums()` | Sum values down each column |
| `colMeans()` | Average values down each column |

---

## File Handling

| Function | Description |
|----------|-------------|
| `ls()` | List all objects in the current R environment |
| `dir()` | List all files in a directory |
| `dir.create()` | Create a new directory |

---

## Data Handling

| Function | Description |
|----------|-------------|
| `c()` | Combine values into a vector |
| `factor()` | Create a categorical variable with defined levels |
| `matrix()` | Create a two-dimensional array |
| `is.matrix()` | Check if object is a matrix |
| `as.matrix()` | Convert object to matrix |
| `list()` | Create a collection that can hold different data types |
| `data.frame()` | Create a table-like structure with rows and columns |
| `paste()` | Concatenate strings together |
| `print()` | Display output to the console |
| `nrow()` | Count the number of rows |
| `ncol()` | Count the number of columns |
| `dim()` | Get dimensions (rows and columns) |
| `length()` | Get the number of elements |
| `head()` | View the first few rows |
| `attributes()` | Get or set object attributes like names and dimensions |
| `names()` | Get or set names of elements |
| `colnames()` | Get or set column names |
| `rownames()` | Get or set row names |
| `cbind()` | Combine objects by columns (side by side) |
| `rbind()` | Combine objects by rows (stacking) |
| `read.csv()` | Read data from a CSV file |
| `read.table()` | Read data from a text file |
| `source()` | Run R code from an external file |
| `dump()` | Write R objects to a file in text format |
| `dput()` | Write a single R object to a file in text format |
| `dget()` | Read an object written by dput |
| `readLines()` | Read lines of text from a file |
| `writeLines()` | Write lines of text to a file |
| `complete.cases()` | Find rows with no missing values |
| `subset()` | Extract rows or columns meeting conditions |
| `sample()` | Take a random sample from data |
| `unclass()` | Remove class attribute to see underlying structure |
| `args()` | Show the arguments a function accepts |

---

## Debugging

See also: [[r_coding#Related Topics|Error Handling]]

| Function | Description |
|----------|-------------|
| `traceback()` | Show the call stack after an error occurs |
| `debug()` | Step through a function line by line |
| `browser()` | Pause execution and enter interactive debugging mode |
| `trace()` | Insert debugging code into a function |
| `recover()` | Choose where to resume after an error |

---

## Logical Functions

| Function | Description |
|----------|-------------|
| `isTRUE()` | Check if argument evaluates to TRUE |
| `identical()` | Check if two objects are exactly the same |
| `xor()` | Exclusive OR - TRUE if exactly one argument is TRUE |
| `which()` | Find positions of TRUE values in a logical vector |
| `any()` | TRUE if at least one element is TRUE |
| `all()` | TRUE if every element is TRUE |

---

## Control Structures

See [[r_control_structures]] for detailed explanations and examples.

| Keyword | Description |
|---------|-------------|
| `if, else` | Execute code based on a condition |
| `for` | Repeat code a fixed number of times |
| `while` | Repeat code while a condition is true |
| `repeat` | Repeat code indefinitely until break |
| `break` | Exit a loop immediately |
| `next` | Skip to the next iteration of a loop |
| `return` | Exit a function and return a value |

---

## Loop Functions

These functions apply operations across data structures without explicit loops.

| Function | Description |
|----------|-------------|
| `lapply()` | Apply a function to each element of a list, return a list |
| `sapply()` | Like lapply but simplifies result to vector or matrix if possible |
| `vapply()` | Like sapply but you specify the expected output type |
| `tapply()` | Apply a function to groups defined by a factor |
| `mapply()` | Apply a function to multiple vectors/lists in parallel |
| `apply()` | Apply a function across rows or columns of a matrix |
| `split()` | Divide data into groups based on a factor |

---

## Sequence Helpers

| Function | Description |
|----------|-------------|
| `seq_len()` | Generate sequence from 1 to n |
| `seq_along()` | Generate sequence matching length of an object |
| `invisible()` | Return a value without printing it |

---

## Type Checking

| Function | Description |
|----------|-------------|
| `class()` | Get the general class of an object |
| `typeof()` | Get the low-level storage type |
| `str()` | Display compact structure of an object |
| `identical()` | Check if two objects are exactly the same |
| `is.na()` | Check for missing values (NA) |
| `is.nan()` | Check for Not a Number values |
| `is.null()` | Check if object is NULL |
| `is.numeric()` | Check if object is numeric |
| `is.character()` | Check if object is character/text |
| `is.logical()` | Check if object is logical (TRUE/FALSE) |

**Packages for type checking:** `rlang`, `checkmate`

---

## External Connections

| Function | Description |
|----------|-------------|
| `file()` | Open a connection to a file |
| `gzfile()` | Open a connection to a gzip compressed file |
| `bzfile()` | Open a connection to a bzip2 compressed file |
| `url()` | Open a connection to a webpage |

---

## Useful Packages

| Package | Description |
|---------|-------------|
| `httr2` | Modern, user-friendly package for web and API calls |
| `curl` | Lower-level package for URL and web operations |
| `RCurl` | Legacy package for URL and web work |

---

## Optimization

| Function | Description |
|----------|-------------|
| `optim()` | General-purpose optimization for finding minimum/maximum |
| `nlm()` | Non-linear minimization |
| `optimize()` | One-dimensional optimization |

---

## Dates and Times

See [[r_dates_and_times]] for detailed explanations.

| Function | Description |
|----------|-------------|
| `as.Date()` | Convert to a Date object |
| `Sys.time()` | Get the current system date and time |
| `as.POSIXct()` | Convert to POSIXct (stores as seconds since 1970) |
| `as.POSIXlt()` | Convert to POSIXlt (stores as list with components) |
| `strptime()` | Parse a string into a date-time using a format |
| `weekdays()` | Extract the day of the week |
| `months()` | Extract the month name |
| `quarters()` | Extract the quarter of the year |

---

## Error Handling

| Type | Description |
|------|-------------|
| `message` | Informational message, execution continues |
| `warning` | Something unexpected, execution continues |
| `error` | Fatal problem, execution stops |
| `condition` | Custom conditions you can define for specific situations |

---

## Random Numbers

Functions follow the pattern: `r` (random), `d` (density), `p` (cumulative probability), `q` (quantile).

### Normal Distribution

| Function | Description |
|----------|-------------|
| `rnorm()` | Generate random numbers from normal distribution |
| `dnorm()` | Get the density (height of curve) at a value |
| `pnorm()` | Get cumulative probability up to a value |
| `qnorm()` | Get value for a given probability |

### Poisson Distribution

| Function | Description |
|----------|-------------|
| `rpois()` | Generate random counts from Poisson distribution |
| `dpois()` | Get probability of a specific count |
| `ppois()` | Get cumulative probability up to a count |
| `qpois()` | Get count for a given probability |

### Gamma Distribution

| Function | Description |
|----------|-------------|
| `rgamma()` | Generate random numbers from gamma distribution |
| `dgamma()` | Get the density at a value |
| `pgamma()` | Get cumulative probability up to a value |
| `qgamma()` | Get value for a given probability |

### Random Seed

| Function | Description |
|----------|-------------|
| `set.seed()` | Set random seed for reproducible results |
| `sample()` | Take random samples from data |

---

## Profiling

Profiling helps you find which parts of your code are slowest.

| Function | Description |
|----------|-------------|
| `system.time()` | Measure how long an expression takes to run |
| `Rprof()` | Start profiling to record where time is spent |
| `summaryRprof()` | Summarize profiling results |

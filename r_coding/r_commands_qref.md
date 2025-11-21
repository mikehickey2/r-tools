
**Operators:**
`<-`: assignment operator - used to assign variables
`<<-`: super assignment operator: used to assign a value to an object to a parent environment
`#`: comment; all after that line is ignored
`=`: Also, assigns, but only used inside functions
`?`: gets help with a function
`!`: not -- logical operator
`&`: and -- logical operator, vectorized
`&&`: and, not vectorized, only first element
`|`: or -- logical operator, vectorized
`||`: or, not vectorized, only first element
`==`: equal to
`>=`:
`<=`:
`!=`:
`<`:
`>`:
`%%`: modulus operator ex. `(7 %% 4)` returns `3` (the remainder of `7 / 3`)
`::` : the most explicit base R solution for calling package functions i.e.- `package::function()`


**Subset Operators**
`[`: always returns an object of the same class as the original
`[[` : is used to extract a single element of a list or a data frame, maybe a different class
`$`:  used to extract an element of a list or data frame by name

**Statistics functions**
`cor()`:
`var()`:
`cov()`:
`lm()`:
`sd()`:
`mean()`:
`median()`:
`sum()`:
`floor()`: rounds a numeric value **down** to the nearest integer that is less than or equal to the argument
`summary()`:
`rowSums()`:
`rowMeans()`:
`colSums()`:
`colMeans()`:


**File Handling**
`ls()`: list all elements within the R environment
`dir()`:  lists all files in a directory
`dir.create()`: create directories

**Data Handling**
`c()`: combine or concatenate - builds vectors
`factor()`:
`matrix(), is.matrix(), as.matrix()`:
`list()`:
`paste()`:
`print()`:
`nrow()`:
`ncol()`:
`data.frame()`:
`read.csv()`:
`read.table()`:
`name()`:
`dump()`:
`dput()`:
`source()`:
`dget()`:
`readlines()`:
`writelines()`:
`head()`:
`dim()`:
`attributes()`:
`length()`:
`cbind()`:
`rbind()`:
`data.frame()`:
`colnames()`:
`rownames()`:
`complete.cases()`:  returns all the rows that are complete without NA
`subset()`:
`sample()`: random sampling
`unclass()`: removes the class attribute of an object, effectively converting it to its underlying structure. This is useful for inspecting or manipulating objects without their class-specific behaviors.
`args()`: input is a function and it will return the arguments for the function
`list()`: creates a **list**, which is a flexible data structure that can hold elements of different types

**Debugging**
`traceback()`:
`debug()`:
`browser()`:
`trace()`:
`recover()`:

**Logical Functions**
`isTRUE()`: evaluates if an argument is true
`identical()`: returns `TRUE` if both arguments are identical
`xor()`: input two arguments, exclusive or logic returns a boolean output
`which()`: 
`any()`: return TRUE if one or more of the elements in the logical vector is TRUE
`all()`: return TRUE if every element in the logical vector is TRUE

**Control Structures**
[[r_control_structures]]
`if, else`: testing a condition 
`for`: execute a loop for a fixed number of times
`while`: execute a loop while a condition is true
`repeat`: execute an infinite loop
`break`: break the execution of a loop
`next`: skip an iteration of a loop
`return`: exit a function

**Loop Functions**
`lapply`: 'list apply' Loop over a list and evaluate a function on each element
`sapply`: 'simplified apply' same as `lapply()`, but tries to simplify the result
`tapply()`: applies a function to groups of values based on a factor/category. "table apply"
`mapply()`: is "multivariate apply" - it applies a function to MULTIPLE vectors/lists in parallel
`apply()`: apply a functions over the margins of an array
`vapply()`: like sapply but you must specify what output type you expect. 
`split()`:


`seq_len()`:
`seq_along()`:
`invisible()`: returns in a function do not get printed to the screen


**Type Checking**
`class()`: Returns the general class of an object (e.g., "numeric", "data.frame")
`typeof()`: Returns the specific low-level data type (e.g., "double", "integer")
`identical()`: checks to see if two objects are identical, returns TRUE or FALSE
`is.*()`: A family of functions (e.g., `is.numeric()`, `is.character()`, `is.logical()`) that return a logical `TRUE` or `FALSE` value.
	`is.na()`:
	`is.nan()`:
	`is.null()`:
`str()`: Provides a compact display of an object's internal structure, including types of components (especially useful for data frames)
	**Packages for typechecking:** `rlang`, `checkmate`


**Interfaces to the outside world**
`file()`:  opens a connection to a file
`gzfile()`: opens a connection to a compressed file gzip (.gz)
`bzfile():` opens a connection to a compressed file bzip (.bz2)
`url()`: opens a connection to a webpage

**Packages to look into**
`httr2`: most modern for web and API calls, user friendly and readable code
`curl`: more modern package to handle url and web
`Rcurl`: used for handling url and web work

**Optimization in R**
`optim()`:
`nim()`:
`optimize()`:

[[r_dates_and_times]]
`as.Date()`: Converts a character string or numeric value to a `Date` object (e.g., `as.Date("2025-11-14")`).
`weekdays()`:  Extracts the day of the week from a `Date` or `POSIXt` object (e.g., `weekdays(as.Date("2025-11-14"))` returns `"Friday"`).
`months()`: Extracts the month name from a `Date` or `POSIXt` object (e.g., `months(as.Date("2025-11-14"))` returns `"November"`).
`quarters()`: Extracts the quarter of the year from a `Date` or `POSIXt` object (e.g., `quarters(as.Date("2025-11-14"))` returns `"Q4"`).
`Sys.time()`: Returns the current system date and time as a `POSIXct` object.
`as.POSIXct()`: Converts a character string or `Date` to a `POSIXct` object (e.g., `as.POSIXct("2025-11-14 21:24:01")`).
`as.POSIClt()`: Converts a character string or `Date` to a `POSIXlt` object, which stores date-time as a list with components like year, month, etc.
`strptime()`: Parses a character string into a `POSIXlt` object based on a specified format (e.g., `strptime("14-11-2025", format = "%d-%m-%Y")`).

**Something's Wrong**
`message`: execution continues
`warning`: execution continues
`error`: fatal problem, execution stops
`condition`: coders can create their own conditions for when something happens in the code


**Generating random numbers**
`rnorm()`:
`dnorm()`:
`pnorm()`:
`qnorm()`:

`rpois()`:
`dpois()`:
`ppois()`:
`qpois()`:

`rgamma()`:
`dgamma()`:
`pgamma()`:
`qgamma()`:
`set.seed()`:
`sample()`:

**Profiling**
Profiling and performance analysis is a systematic way to examine how much time is spent in different parts of a program
Useful when optimizing code

`system.time()`:
`Rprof()`:
`summaryRprof()`:


# R Functions

[[r_coding|← Back to R Coding Reference]]

Functions in R are stored as objects of class "function" and are considered "first class objects" - they can be passed as arguments to other functions and can be nested inside other functions.

## Table of Contents

- [Function Basics](#function-basics)
- [Arguments](#arguments)
- [The ... Argument](#the--argument)

---

## Function Basics

Functions are defined using the `function()` keyword.

**Key concepts:**
- Functions can be passed as arguments to other functions
- Functions can be defined inside other functions (nested)
- Every function has named arguments

---

## Arguments

### Formal Arguments

Arguments included in the function definition are called formal arguments. Use `formals()` to see them.

### Argument Matching

R matches arguments in two ways:
- **By position** - arguments are matched in the order they appear
- **By name** - you can specify arguments by name in any order

You can mix positional and named arguments, but avoid reordering too much as it makes code confusing.

---

## The ... Argument

The `...` (dot-dot-dot) argument indicates a variable number of arguments.

**Common uses:**
- **Passing to other functions** - Generic functions use `...` to pass extra arguments to methods
- **Unknown number of inputs** - When you can't know in advance how many arguments will be provided

**Important:** Any arguments that come after `...` must be named explicitly and cannot be partially matched.

---

## See Also

- [[r_coding_standards#Keep Functions Short|Coding Standards]] - Best practices for function length
- [[r_control_structures]] - Control structures used within functions
- [[r_commands_qref#Data Handling|args()]] - Show the arguments a function accepts
